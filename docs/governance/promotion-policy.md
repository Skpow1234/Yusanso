# Promotion policy

## Aliases

`candidate` → (gates) → `champion`; optional `shadow` and `rollback`.

## Required gates (initial engineering set)

1. Unit and data-contract tests green
2. Holdout metrics meet or beat approved baseline (task-specific)
3. Calibration checks recorded
4. Subgroup regression checks (no unexplained collapse vs baseline)
5. Latency / memory within serving SLO config
6. Model card complete
7. Artifact / image scan clean

## Metadata on promotion

task, architecture, dataset_version, split_version, sampling_rate, lead_count, preprocessor_version, calibration_version, git_sha, training_image_digest, metrics, latency benchmark.
