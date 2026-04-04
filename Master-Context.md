# Master Context - IIH + CMF Research (April 3, 2026)

## Long-Term Goals
1. Discover exact CMF collapses to physical fine-tuning constants.
2. Demonstrate strong hierarchical emergence from a single low-degree polynomial seed.
3. Prove fine-tuning is intrinsic (no multiverse or anthropic turtles).
4. Develop predictive seeded perturbation methods.
5. Produce arXiv-quality papers.

## Key Discovery
The recurring cubic family is our strongest signal:
- a(n) = n³ − 6n² − 6n − 5
- b(n) = −n³ + 5n² + 5n + 5

## Corrected Record (Final and Clear)
- The run that produced the recurring cubic family and the 10k+ candidates was **actually a double-target run on Higgs VEV + 137**.
- π was **not** passed as a target to the enumerator.
- The “triple” label was inaccurate and misleading — it was only in the name and conversation, not in the actual code.

## Current Strategy: Seeded Perturbation (Strict)
- Treat the recurring cubic as a seed/template.
- Search only very narrow neighborhoods around its exact coefficients (±1 or ±2 max).
- Use `search_range=3` and coef ranges tightly centered on the cubic values.

## Technical Rules for Scripts (Strict)
- Always create .py files with **nano** (never cat heredoc).
- Include clear step-by-step print statements and full try/except blocks.
- Keep runtime <8 hours on Mac and <6 hours on 8-core VMs.
- Use mpmath dps=50 or higher.
- Background with nohup and monitor with tail -f and watch on .db files.

## Current Priority
Test whether the recurring cubic family still collapses in seeded triple-target (i^i + Higgs VEV + 137) and seeded i^i tests. Use the narrowest seeded ranges possible.

## Repo Usage for New Conversations
New Grok conversations must start with:
> Resume from GitHub: https://github.com/sparcnova-dev/IIH_CMF
and immediately read and fully internalize Master-Context.md before answering any question.

### Research Journal (Last updated: April 3, 2026)
- April 3: Multiple light-seeded runs returned 0 matches when ranges were too narrow.
- April 2–3: Shifted to seeded perturbation strategy around the recurring cubic family.
- March 31–April 2: Identified recurring cubic as strongest signal.
- Ongoing: Focus on i^i self-collapse transform and verifying cubic in triple-target setting.

