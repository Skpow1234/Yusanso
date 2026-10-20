# Healthcare ML methodology

## Data leakage

- Patient-level separation is mandatory when multiple records belong to one patient
- For temporal prediction, split by prediction time; never use post-cutoff features

## Metrics

Do not report only accuracy. Track as appropriate:

AUROC, AUPRC, sensitivity/recall, specificity, precision/PPV, NPV, F1, macro/micro/weighted metrics, Brier score, calibration error/plots, confusion matrices, multilabel metrics, confidence intervals, inference latency and throughput.

## Calibration

High ranking metrics do not imply useful probabilities. Test reliability curves, Brier score, Platt / logistic calibration, isotonic regression, temperature scaling, threshold sensitivity.

## Subgroup evaluation

When fields support responsible analysis, stratify by available attributes (e.g. age/sex/site) without unsupported causal claims.

## Missingness

Document which fields are missing, whether missingness is informative, imputation method, leakage risks, and inference behavior when fields are absent.

## Explainability

SHAP / permutation / attribution are diagnostic tools — not proof of clinical causality.

## Safety

All outputs are research/engineering results unless proper validation/regulatory work exists.
