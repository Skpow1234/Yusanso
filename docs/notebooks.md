# Notebook philosophy

> **Notebooks discover and explain; Python modules execute production logic.**

## Requirements for every notebook

1. One research question
2. Dataset / version declared
3. Seed declared
4. Import from `src/health_ml` once logic stabilizes
5. Top-to-bottom runnable after env setup
6. No local absolute paths
7. Record experiment IDs / model versions when relevant
8. End with conclusions and next actions
9. Do not silently train the final deployed model outside the tracked pipeline

## Legitimate notebook work

Statistical exploration, visualization, feature hypotheses, model family comparison, calibration, subgroups, robustness, explainability, signal inspection, deployment latency analysis.

Index: [notebooks/README.md](../notebooks/README.md).
