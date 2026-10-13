# I Have Guts. Eureka. — Corrected Einstein–Maxwell Analysis

Original article: Matthew Chenoweth Wright and MillieComplex, January 15, 2025. Critical mathematical reconstruction, October 2026.

## Abstract
Electromagnetic radiation contributes to spacetime curvature via its stress-energy tensor. This revision corrects the Ricci-scalar claim, the geodesic-deviation model, and an unjustified quantum correction. It includes a reproducible idealized radiation-dominated FLRW benchmark and a pathway to testing finite photon pulses.

## Conventions
Signature (-,+,+,+); x^0=ct; SI units; cosmological constant Λ has units m^-2. `u` is energy density (J/m³), `ρ_m=u/c²` mass-equivalent density (kg/m³). Test bodies are neutral and freely falling.

## Einstein–Maxwell baseline
G_{μν}+Λg_{μν}=(8πG/c⁴)T_{μν}.

T^{EM}_{μν}=(1/μ₀)[F_{μα}F_ν{}^α-(1/4)g_{μν}F_{αβ}F^{αβ}].

In four dimensions T^μ{}_μ=0. Taking the trace yields -R+4Λ=(8πG/c⁴)T, so **R=4Λ** for a pure classical EM source. For Λ=0, R=0 although Ricci and Riemann tensors can be nonzero. When Λ=0, R_{μν}=(8πG/c⁴)T^{EM}_{μν}; otherwise R_{μν}=Λg_{μν}+(8πG/c⁴)T^{EM}_{μν}. Radiation gravitates; tracelessness does not imply an absence of gravitational attraction.

## Geodesic deviation
Free trajectories obey d²x^μ/dλ²+Γ^μ_{αβ}(dx^α/dλ)(dx^β/dλ)=0. Light follows null geodesics in the geometric-optics limit. Nearby freely falling worldlines obey in a local orthonormal frame:

**d²ξ^i/dt² = -c² R^i{}_{0j0} ξ^j** (x^0=ct).

The former x¨=-R x equation is not valid generally; tidal curvature is governed by Riemann components, not the Ricci scalar.

## Radiation-era FLRW benchmark
For spatially flat FLRW, pure radiation p=u/3, Λ=0: a(t)=a₀(t/t₀)^(1/2) for t>0. H²=(8πG/3c²)u=(8πG/3)ρ_m. Since a¨/a=-1/(4t²), physical separation of comoving nearby geodesics satisfies

**ξ¨ = -ξ/(4t²)**.

General solution: **ξ(t)=sqrt(t)[A+B ln(t/t₀)]**. For ξ(t₀)=ξ₀ and ξ˙(t₀)=ξ₀/(2t₀), **ξ(t)=ξ₀ sqrt(t/t₀)**. The negative second derivative does not imply periodic oscillation: separation grows with decreasing rate. This homogeneous cosmology is not a directed laser-pulse model.

## Quantum correction
The original ad hoc expression T^Q_{μν}=(ℏc³/G)(R²/Λ_QG⁴)g_{μν} is dimensionally undefined without units for Λ_QG and generally not separately conserved: ∇^μ[f(x)g_{μν}]=∂_ν f. It is withdrawn. Any quantum-effective proposal must arise from a covariant action and satisfy conservation identities. One candidate class is an effective gravitational action with curvature terms R+αR²+βR_{μν}R^{μν}, with α,β in m²; its equations, coefficients, and limits require derivation. This is not a demonstrated quantum-gravity unification.

## Laboratory scale
A 1000 J pulse has E/c²≈1.11×10^-14 kg. Spherical mass-equivalent acceleration proxy at 1 m: G(E/c²)/r²≈7.43×10^-25 m/s². This is NOT a prediction for a directed laser beam, whose geometry and retarded field must be modeled.

## Simulation
`simulation.py` integrates the idealized FLRW separation ODE and checks against the exact solution. It also produces a straight-line control. This tests numerical consistency only, not radiation-induced laboratory gravity. The original paper's 20 simulations lack the source inputs required for reproduction; its straight-line plot does not establish acceleration and its monotone curved plot does not establish oscillation.

## Falsifiable extension pathway
1. Specify finite pulse profile, duration, energy, polarization, and boundaries.
2. Calculate EM stress-energy and check total conservation including sources.
3. Solve linearized Einstein equations in a specified gauge or use an exact Einstein–Maxwell solution.
4. Extract gauge-invariant tidal observables and integrate probe motion.
5. Compare with a zero-pulse control and established GR baselines.
6. Add one explicitly dimensioned EFMW term only if derivable, and preregister a distinguishable prediction and sensitivity threshold.

## Conclusion
The classical result that light gravitates survives. The claimed novel Ricci-scalar law, oscillations, and quantum unification are not established and are withdrawn pending further work.
