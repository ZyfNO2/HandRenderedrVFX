﻿//------------------------------------------------------------------------------------------------------------------
// Volumetric Lights
// Created by Kronnect
//------------------------------------------------------------------------------------------------------------------

using UnityEngine;
using System;

namespace VolumetricLights {

    public partial class VolumetricLight : MonoBehaviour {

        #region Particle support

        const string PARTICLE_SYSTEM_NAME = "DustParticles";
        const string SKW_CUSTOM_BOUNDS = "VL_CUSTOM_BOUNDS";

        Material particleMaterial;

        [NonSerialized]
        public ParticleSystem ps;

        ParticleSystemRenderer psRenderer;
        Vector3 psLastPos;
        Quaternion psLastRot;

        void ParticlesDisable() {
            if (ps != null) {
                ps.gameObject.SetActive(false);
            }
            if (particleMaterial != null) {
                particleMaterial.SetColor("_ParticleLightColor", new Color(0, 0, 0, 0));
            }
        }

        void ParticlesResetIfTransformChanged() {
            if (ps != null && (ps.transform.position != psLastPos || ps.transform.rotation != psLastRot)) {
                ParticlesPopulate();
            }
        }

        void ParticlesPopulate() {
            ps.Clear();
            ps.Simulate(100);
            psLastPos = ps.transform.position;
            psLastRot = ps.transform.rotation;
        }

        void ParticlesCheckSupport() {
            if (!profile.enableDustParticles) {
                ParticlesDisable();
                return;
            }

            bool psNew = false;
            if (ps == null) {
                Transform childPS = transform.Find(PARTICLE_SYSTEM_NAME);
                if (childPS != null) {
                    ps = childPS.GetComponent<ParticleSystem>();
                    if (ps == null) {
                        DestroyImmediate(childPS.gameObject);
                    }
                }
                if (ps == null) {
                    GameObject psObj = Resources.Load<GameObject>("Prefabs/DustParticles") as GameObject;
                    if (psObj == null) return;
                    psObj = Instantiate(psObj);
                    psObj.name = PARTICLE_SYSTEM_NAME;
                    psObj.transform.SetParent(transform, false);
                    ps = psObj.GetComponent<ParticleSystem>();
                }
                psNew = true;
            }

            if (particleMaterial == null) {
                particleMaterial = Instantiate(Resources.Load<Material>("Materials/DustParticle")) as Material;
            }

            // Configure particle material
            if (useCustomBounds) {
                keywords.Add(SKW_CUSTOM_BOUNDS);
            }

            switch (generatedType) {
                case LightType.Spot:
                    keywords.Add(SKW_SPOT);
                    break;
                case LightType.Point:
                    keywords.Add(SKW_POINT);
                    break;
                case LightType.Area:
                    keywords.Add(SKW_AREA_RECT);
                    break;
                case LightType.Disc:
                    keywords.Add(SKW_AREA_DISC);
                    break;
            }
            if (profile.enableShadows) {
                keywords.Add(SKW_SHADOWS);
            }
            particleMaterial.shaderKeywords = keywords.ToArray();

            particleMaterial.renderQueue = profile.renderQueue + 1;
            particleMaterial.SetFloat("_Border", profile.border);
            particleMaterial.SetFloat("_DistanceFallOff", profile.distanceFallOff);
            particleMaterial.SetVector("_FallOff", new Vector3(profile.attenCoefConstant, profile.attenCoefLinear, profile.attenCoefQuadratic));
            particleMaterial.SetColor("_ParticleLightColor", lightComp.color * profile.mediumAlbedo * (lightComp.intensity * profile.dustBrightness));
            particleMaterial.SetFloat("_ParticleDistanceAtten", profile.dustDistanceAttenuation * profile.dustDistanceAttenuation);
            psRenderer = ps.GetComponent<ParticleSystemRenderer>();
            psRenderer.material = particleMaterial;

            // Main properties
            ParticleSystem.MainModule main = ps.main;
            main.simulationSpace = ParticleSystemSimulationSpace.World;
            ParticleSystem.MinMaxCurve startSize = main.startSize;
            startSize.mode = ParticleSystemCurveMode.TwoConstants;
            startSize.constantMin = profile.dustMinSize;
            startSize.constantMax = profile.dustMaxSize;
            main.startSize = startSize;

            // Set emission bounds
            ParticleSystem.ShapeModule shape = ps.shape;
            switch (generatedType) {
                case LightType.Spot:
                    shape.shapeType = ParticleSystemShapeType.ConeVolume;
                    shape.angle = generatedSpotAngle * 0.5f;
                    shape.position = Vector3.zero;
                    shape.radius = profile.tipRadius;
                    shape.length = generatedRange;
                    shape.scale = Vector3.one;
                    break;
                case LightType.Point:
                    shape.shapeType = ParticleSystemShapeType.Sphere;
                    shape.position = Vector3.zero;
                    shape.scale = Vector3.one;
                    shape.radius = generatedRange;
                    break;
                case LightType.Area:
                case LightType.Disc:
                    shape.shapeType = ParticleSystemShapeType.Box;
                    shape.position = new Vector3(0, 0, generatedRange * 0.5f);
                    shape.scale = GetComponent<MeshFilter>().sharedMesh.bounds.size;
                    break;
            }

            // Set wind speed
            ParticleSystem.VelocityOverLifetimeModule velocity = ps.velocityOverLifetime;
            Vector3 windDirection = transform.InverseTransformDirection(profile.windDirection);
            shape.position -= windDirection * profile.dustWindSpeed * 10f;
            ParticleSystem.MinMaxCurve velx = velocity.x;
            velx.constantMin = -0.1f + windDirection.x * profile.dustWindSpeed;
            velx.constantMax = 0.1f + windDirection.x * profile.dustWindSpeed;
            velocity.x = velx;
            ParticleSystem.MinMaxCurve vely = velocity.y;
            vely.constantMin = -0.1f + windDirection.y * profile.dustWindSpeed;
            vely.constantMax = 0.1f + windDirection.y * profile.dustWindSpeed;
            velocity.y = vely;
            ParticleSystem.MinMaxCurve velz = velocity.z;
            velz.constantMin = -0.1f + windDirection.z * profile.dustWindSpeed;
            velz.constantMax = 0.1f + windDirection.z * profile.dustWindSpeed;
            velocity.z = velz;

            if (!ps.gameObject.activeSelf) {
                ps.gameObject.SetActive(true);
            }

            if (psNew || !Application.isPlaying) {
                ParticlesPopulate();
            }
            ps.Play();
        }


        void UpdateParticlesVisibility() {
            if (!Application.isPlaying || psRenderer == null) return;
            if (mainCamera == null) {
                if (Camera.main != null) {
                    mainCamera = Camera.main.transform;
                }
                if (mainCamera == null) return;
            }
            Vector3 camPos = mainCamera.position;
            Vector3 pos = transform.position;
            float distSqr = (camPos - pos).sqrMagnitude;
            float maxDistSqr = profile.dustDistanceDeactivation * profile.dustDistanceDeactivation;
            if (distSqr > maxDistSqr) {
                if (psRenderer.enabled) {
                    psRenderer.enabled = false;
                }
            } else if (!psRenderer.enabled) {
                psRenderer.enabled = true;
            }

        }
        #endregion

    }


}
