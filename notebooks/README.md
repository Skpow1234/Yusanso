# Notebooks

**Notebooks discover and explain; Python modules in `src/health_ml` execute production logic.**

Each notebook must:

1. Define one research question
2. Declare dataset/version and seed
3. Import reusable functions from `src/` once logic stabilizes
4. Run top-to-bottom after environment setup
5. Avoid local absolute paths
6. Record experiment IDs / model versions when relevant
7. End with conclusions and next actions
8. Avoid silently training the final deployed model outside the tracked pipeline

| Notebook | Intent |
|----------|--------|
| `00_dataset_card.ipynb` | Dataset documentation |
| `01_data_quality.ipynb` | Quality checks |
| `02_eda.ipynb` | Exploratory analysis |
| `03_baseline.ipynb` | First reproducible baseline |
| `04_feature_engineering.ipynb` | Feature hypotheses |
| `05_classical_models.ipynb` | Classical family comparison |
| `06_deep_models.ipynb` | Deep architecture ladder |
| `07_hyperparameter_search.ipynb` | Tuning studies |
| `08_calibration_thresholds.ipynb` | Calibration & thresholds |
| `09_explainability.ipynb` | Attribution diagnostics |
| `10_subgroup_analysis.ipynb` | Stratified evaluation |
| `11_error_analysis.ipynb` | Failure modes |
| `12_robustness.ipynb` | Noise / lead ablation |
| `13_model_comparison.ipynb` | Cross-family comparison |
| `14_serving_validation.ipynb` | Latency / serving parity |

See [docs/notebooks.md](../docs/notebooks.md).
