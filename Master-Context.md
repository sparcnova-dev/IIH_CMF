# Master Context - IIH + CMF Research (April 3, 2026)

## Core Goals
- Validate Invariant Information Holography (IIH) under Logos Realism.
- Use Conservative Matrix Fields (CMF) to find unifying matrices.
- Focus on strong hierarchical emergence and self-collapse transforms (especially i^i).

## Key Discovery
The **recurring cubic family** is our strongest signal:
- a(n) = n³ − 6n² − 6n − 5   (exact coefficients: 1, -6, -6, -5)
- b(n) = −n³ + 5n² + 5n + 5   (exact coefficients: -1, 5, 5, 5)

## Current Strategy: Seeded Perturbation (Strict)
- Treat the recurring cubic as a **seed/template**.
- Search **only very narrow neighborhoods** around its **exact coefficients**.
- Use `search_range=3` and coef ranges **tightly centered** on the cubic values.
- Example tight ranges for seeded scripts:
  - a_coef_range=[0, 2] (covers leading +1 + ±1)
  - b_coef_range=[-2, 0] (covers leading -1 + ±1)
  - Or a_coef_range=[-7, -4] and b_coef_range=[4, 7] when testing wider but still seeded neighborhoods.
- Never use broad ranges like [-7,2] or [-6,6] unless explicitly justified.

## Technical Rules for Scripts (Strict - must be followed exactly)
- Always create .py files with **nano** (never cat heredoc).
- Include clear step-by-step print statements and full try/except blocks with traceback.
- Keep runtime **<8 hours on Mac** and **<6 hours on 8-core VMs**.
- Use mpmath dps=50 or higher.
- Background with nohup and monitor with tail -f and watch on .db files.
- Name files descriptively.
- Always mention the recurring cubic family in script comments.

## Current Priority
Test whether the recurring cubic family still collapses in seeded triple-target (i^i + Higgs VEV + 137) and seeded i^i tests. Use the narrowest seeded ranges possible.

## Repo Usage for New Conversations
New Grok conversations must start with:
> Resume from GitHub: https://github.com/sparcnova-dev/IIH_CMF
and immediately read and fully internalize Master-Context.md before answering any question.

### Research Journal (Last updated: April 3, 2026)
- April 3: Multiple light-seeded runs (single i^i, double π+Higgs, triple π+Higgs+137) returned 0 matches when ranges were too narrow.
- April 2–3: Shifted to seeded perturbation strategy around the recurring cubic family.
- March 31–April 2: Identified recurring cubic as strongest signal across π + Higgs + 137 runs.
- Ongoing: Focus on i^i self-collapse transform and verifying cubic in triple-target setting.

