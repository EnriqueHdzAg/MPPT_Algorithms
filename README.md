# Design and Validation of a Hybrid MPPT Algorithm for Photovoltaic System Using Interleaved Boost Converter 
**Manuscript ID** : IEEE LATAM

**Submission ID** : 9715

**Authors name and affiliation:**
- Ing. Luis Enrique Hernández Aguilar, Instituto Tecnológico Superior de Irapuato 
- Dr. Gerardo Vázquez Guzmán, Coordinación para la Innovación y Aplicación de la Ciencia y Tecnología 
- Dr. Panfilo Raymundo Martínez Rodríguez, Universidad Autónoma de San Luis Potosí
- Dra. Dalyndha Aztatzi Pluma, Instituto Tecnológico Superior de Abasolo
---

## 📁 Included Scripts
This repository contains all scripts required to reproduce the numerical simulation results presented in the article

| Script | Related Figure(s) | Description |
|--------|-------------------|-------------|
| `HillClimbing.m` | Fig. 11 (Purple trace) | It allows you to calculate the MPP of a PV system by determining the power differential until they equal zero. This is done by varying the duty cycle. |
| `PerturbObserve.m` | Fig. 11 (Blue trace) | It allows you to calculate the MPP of a PV system by determining the power and voltage differential until they equal zero. This is done by varying the duty cycle. |
| `IncrementalConductance.m` | Fig. 11 (Yellow trace) | It allows you to calculate the MPP of a PV system by determining the instantaneous and incremental conductance until the voltage and current differential is equal to zero. This is done by varying the duty cycle. |
| `ParticleSwarmOptimization.m` | Fig. 11 (Brown trace) | It allows you to calculate the MPP of a PV system by varying the duty cycle from 20% to 80% in 5% increments. The duty cycle at which the highest power magnitude was generated is held fixed until an abrupt change is detected. |
| `PSO_PO.m` | Fig. 11 (Green trace) | It allows you to calculate the MPP of a PV system by varying the duty cycle from 20% to 80% in 10% increments. The duty cycle at which the highest power magnitude was generated is kept as a reference and the P&O algorithm comes into operation to track more accurately. |


