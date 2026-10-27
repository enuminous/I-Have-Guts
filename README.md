# I Have Guts. Eureka. — corrected mathematical edition

<!-- ENUMINOUS-UNIFIED-NAV:START -->
## Repository navigation

**eNuminous network:** [All public repositories](https://github.com/enuminous/EFMW/blob/main/REPOSITORY_NAVIGATION.md) · [EFMW](https://github.com/enuminous/EFMW) · [102 equations](https://github.com/enuminous/Monolithic_102_EFMW) · [Frozen Lean](https://github.com/enuminous/Monolithic-102-Zoo-Lean4) · [Zoo](https://github.com/enuminous/Tortoise) · [Papers](https://github.com/enuminous/papers) · [Quantum geometry](https://github.com/enuminous/Base888-Quantum-Geometry)

**This project:** [Repository home](https://github.com/enuminous/I-Have-Guts) · [Subject index](https://github.com/enuminous/EFMW/blob/main/REPOSITORY_NAVIGATION.md#papers-publications-and-creative-work) · [Published site](https://enuminous.github.io/I-Have-Guts/) · [Web application](index.html)

<details open>
<summary><strong>On this page</strong></summary>

- [Lean 4 verification](#lean-4-verification)


</details>

**Related repositories:** [Extrauniversal-Warren-Report](https://github.com/enuminous/Extrauniversal-Warren-Report) · [Wrights-Law](https://github.com/enuminous/Wrights-Law) · [Harlequinn](https://github.com/enuminous/Harlequinn) · [Research-Program](https://github.com/enuminous/Research-Program) · [papers](https://github.com/enuminous/papers) · [EFMW](https://github.com/enuminous/EFMW)

> **Evidence boundary:** A link between projects is navigation, not an assertion of proven equivalence, experimental validation, or shared authorship. See each repository’s own status and review notes.
<!-- ENUMINOUS-UNIFIED-NAV:END -->


Flat GitHub repository based on Matthew Chenoweth Wright's January 15, 2025 article.

- PAPER.md: corrected derivation and research roadmap
- AUDIT.md: error ledger
- simulation.py: reproducible radiation-FLRW baseline
- test_simulation.py: verification
- index.html: GitHub Pages landing page

Run: `python3 simulation.py` and `python3 -m unittest -v test_simulation.py`.

**Scientific status:** classical Einstein–Maxwell mathematics and a benchmark, not evidence for a new force or quantum gravity. Original 20 simulations cannot be reproduced without their original source and parameters.

## Lean 4 verification

The pinned [formal package](formal/VERIFICATION.md) contains kernel-checked mathematical
statements with an explicit [coverage and obligation ledger](formal/COVERAGE.md).
The `Lean verification` workflow builds the package and tests its strict axiom audit.
The workflow result for a commit, rather than this link alone, establishes compilation.
