# Kubeflow pipelines

Conceptual components:

```text
validate_dataset → prepare_splits → preprocess_waveforms → train_model
  → evaluate_model → calibrate_model → robustness_tests
  → package_model → register_mlflow → promotion_check
```

Each component runs in a pinned image, consumes explicit artifact references, writes explicit outputs, and does not depend on notebook state.
