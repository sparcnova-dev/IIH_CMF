# Master Context - IIH + CMF Research (April 3, 2026)

## Core Goals
- Validate Invariant Information Holography (IIH) under Logos Realism.
- Use Conservative Matrix Fields (CMF) via Ramanujan Machine to find unifying matrices that collapse mathematical invariants and physical fine-tuning constants.
- Focus on strong hierarchical emergence and self-collapse transforms (especially i^i, e^e, π^π, ln(2)^ln(2)).

## Key Discovery
The **recurring cubic family** is our strongest signal:
- a(n) = n³ − 6n² − 6n − 5
- b(n) = −n³ + 5n² + 5n + 5
This family appears across multiple targets with extremely high convergence rates.

## Current Strategy: Seeded Perturbation
- Treat the recurring cubic as a seed/template.
- Search small neighborhoods around its exact coefficients (e.g. ±1 or ±2).
- Prefer narrow ranges (search_range=3, coef ±2 to ±8) to keep runtimes <8 hours on Mac and avoid VM instability.
- Prioritize triple-target tests (π + Higgs VEV + 137) because the cubic originally appeared there.

## Technical Rules for Scripts
- Always use `nano` to create .py files (cat heredoc is fragile and often corrupts).
- Include verbose print statements at every major step + try/except blocks.
- Keep search_range ≤ 3 and coef ranges narrow when possible.
- Use mpmath dps=50 or higher.
- Background with nohup and monitor with tail -f and watch on .db files.

## Current Priority
Test whether the recurring cubic family still produces matches in seeded triple-target (π + Higgs + 137) and seeded i^i tests.

## Repo Usage for New Conversations
New Grok conversations must start with:
> Resume from GitHub: https://github.com/sparcnova-dev/IIH_CMF
and immediately read Master-Context.md for full strategy and technical rules.

### Research Journal (Last updated: April 3, 2026)
- **April 3** – Mac triple-target i^i + Higgs VEV + 137 (light seeded) finished with 0 matches. Recurring cubic did not appear in narrow ranges.
- **April 2–3** – Launched multiple seeded jobs (broad cubic, symmetry-filtered, i^i triple) across 3 GCP VMs + Mac.
- **March 31–April 2** – Identified recurring cubic family as strongest signal across π + Higgs + 137 runs. Shifted to seeded perturbation strategy to anticipate fertile regions.
- **Ongoing** – Focus remains on testing self-collapse transforms (i^i) and verifying if the cubic is triple-specific.

