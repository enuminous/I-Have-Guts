# Formal coverage

## Frozen target

Source: [`PAPER.md`](../PAPER.md), baseline commit `eca418e38c7c976b23a711529eb11b8cd482edb6`.
The definitions and theorem hypotheses in `Radiation.lean` are the acceptance target.
The pinned Lean/Mathlib build and strict axiom audit must pass before treating a
statement as machine-checked. The workflow records the exact tested commit/run.

## Statements covered

Four-dimensional scalar trace cancellation after contraction identification; R=4 Lambda from the traced Einstein equation and a traceless source; a nonzero matrix with zero trace; the stated sqrt(t)*(A+B log(t/t0)) solution family satisfies the radiation separation ODE for t,t0>0, with explicit position and velocity at t0.

## Limits and unresolved obligations

The tensor-contraction identification and the FLRW reduction to the scalar ODE are premises from the stated classical model, not newly formalized differential geometry. The general-family ODE check does not yet prove uniqueness or exhaustion of all solutions. A finite directed laser pulse and the withdrawn quantum correction are not established.

## Evidence discipline

These are established algebra, analysis and finite-dimensional mathematics,
not a novelty claim. Formal proofs establish only their stated hypotheses and
conclusions. Computational regression tests are software checks, not independent
experimental evidence. No theorem uses a claimed physical interpretation as a
premise. No custom axioms, `sorry`, or native-evaluation trust exception is allowed.
No new animal operation is invented or claimed to have been executed.

The first evidence status is **unresolved** until the exact-commit workflow
succeeds; thereafter only the covered formal statements are **demonstrated**.
Scientific applicability remains a **hypothesis/postulate** unless separately tested.
