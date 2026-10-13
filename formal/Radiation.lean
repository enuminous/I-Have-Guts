import Mathlib

namespace Radiation
open Real

/-- Four-dimensional trace cancellation, after the tensor contractions have
been identified with the scalar invariant S. -/
theorem electromagnetic_trace (S μ₀ : ℝ) : (S - (1/4 : ℝ)*4*S) / μ₀ = 0 := by ring

theorem scalar_curvature_of_traceless (R Λ κ T : ℝ)
    (hEinstein : -R + 4*Λ = κ*T) (htrace : T = 0) : R = 4*Λ := by
  rw [htrace] at hEinstein
  linarith

/-- A zero scalar trace does not force a tensor to vanish. -/
theorem trace_does_not_imply_zero :
    ∃ M : Matrix (Fin 2) (Fin 2) ℝ, M.trace = 0 ∧ M ≠ 0 := by
  refine ⟨!![1,0;0,-1], ?_, ?_⟩
  · norm_num [Matrix.trace, Fin.sum_univ_two]
  · intro h
    have := congrArg (fun M : Matrix (Fin 2) (Fin 2) ℝ => M 0 0) h
    norm_num at this

noncomputable def separation (A B t₀ t : ℝ) : ℝ := sqrt t * (A + B * log (t/t₀))
noncomputable def velocity (A B t₀ t : ℝ) : ℝ :=
  (A + B * log (t/t₀) + 2*B) / (2*sqrt t)

private theorem log_ratio_derivative (t₀ t : ℝ) (h₀ : t₀ ≠ 0) (ht : t ≠ 0) :
    HasDerivAt (fun x => log (x/t₀)) (1/t) t := by
  convert ((hasDerivAt_id t).div_const t₀).log (div_ne_zero ht h₀) using 1
  field_simp

theorem separation_derivative (A B t₀ t : ℝ) (h₀ : 0 < t₀) (ht : 0 < t) :
    HasDerivAt (separation A B t₀) (velocity A B t₀ t) t := by
  have hs := hasDerivAt_sqrt ht.ne'
  have hl := (log_ratio_derivative t₀ t h₀.ne' ht.ne').const_mul B
  have h := hs.mul (hl.const_add A)
  convert h using 1
  dsimp [velocity]
  have hsq := sq_sqrt ht.le
  have hs0 := (sqrt_pos.2 ht).ne'
  field_simp [ht.ne',hs0]
  nlinarith [hsq]

theorem separation_ode (A B t₀ t : ℝ) (h₀ : 0 < t₀) (ht : 0 < t) :
    HasDerivAt (velocity A B t₀) (-separation A B t₀ t / (4*t^2)) t := by
  have hs := (hasDerivAt_sqrt ht.ne').const_mul 2
  have hl := (((log_ratio_derivative t₀ t h₀.ne' ht.ne').const_mul B).const_add A).add_const (2*B)
  have hs0 := (sqrt_pos.2 ht).ne'
  have h := hl.div hs (mul_ne_zero (by norm_num) hs0)
  convert h using 1
  dsimp [separation]
  have hsq := sq_sqrt ht.le
  field_simp [ht.ne', hs0]
  nlinarith [hsq]

theorem initial_position (A B t₀ : ℝ) (h₀ : 0 < t₀) :
    separation A B t₀ t₀ = sqrt t₀ * A := by simp [separation,h₀.ne']

theorem initial_velocity (A B t₀ : ℝ) (h₀ : 0 < t₀) :
    velocity A B t₀ t₀ = (A + 2*B)/(2*sqrt t₀) := by simp [velocity,h₀.ne']

end Radiation
