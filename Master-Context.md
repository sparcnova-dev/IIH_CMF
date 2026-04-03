# Master Context - IIH + CMF Research (April 3, 2026)

## Core Goals
- Validate Invariant Information Holography (IIH) under Logos Realism.
- Use Conservative Matrix Fields (CMF) via Ramanujan Machine to find unifying matrices that collapse mathematical invariants and physical fine-tuning constants.
- Focus on strong hierarchical emergence and self-collapse transforms (especially i^i).

## Key Discovery
The **recurring cubic family** is our strongest signal:
- a(n) = n³ − 6n² − 6n − 5
- b(n) = −n³ + 5n² + 5n + 5

## Current Strategy: Seeded Perturbation
- Treat the recurring cubic as a seed/template.
- Search **only narrow neighborhoods** around its exact coefficients.
- Never use broad ranges like [-8,8] unless explicitly justified.
- Prefer `search_range=3` and coef ranges no wider than ±2 around the cubic values.

## Technical Rules for Scripts (Strict)
- Always use **nano** to create .py files (never `cat > ... << 'EOF'` — it corrupts easily).
- Include clear step-by-step print statements ("Step 1: ...", "Step 5: ...") and full try/except blocks with traceback.
- Keep runtime **<8 hours on Mac** and **<6 hours on 8-core VMs**.
- Use `mp.mp.dps = 50` or higher.
- Background with `nohup` and monitor with `tail -f` and `watch -n 30 'ls -lh *.db'`.
- Name files descriptively (e.g. `seeded_ii_higgs_137_mac.py`).

## Current Priority
1. Test whether the recurring cubic family still collapses in seeded triple-target (i^i + Higgs VEV + 137).
2. Test i^i as a single-target and double-target with Higgs/137.
3. Update matrices and heat-map after every run.

## Repo Usage for New Conversations
New Grok conversations must start with:
> Resume from GitHub: https://github.com/sparcnova-dev/IIH_CMF
and immediately read and fully internalize Master-Context.md before answering any question.

### Research Journal (Last updated: April 3, 2026)
- April 3: Multiple light-seeded runs (single i^i, double π+Higgs, triple π+Higgs+137) all returned 0 matches when ranges were too narrow.
- April 2–3: Shifted to seeded perturbation strategy around the recurring cubic family.
- March 31–April 2: Identified recurring cubic as strongest signal across π + Higgs + 137 runs.
- Ongoing: Focus on i^i self-collapse transform and verifying cubic in triple-target setting.

