# Experiment plane

```text
Jupyter / CLI / Kubeflow
          |
     Training Package
          |
       MLflow Run
          |
 Metrics + Params + Artifacts
          |
      Model Registry
```

## Tracking expectations

Every registered model must link to:

- Git SHA
- Dataset version
- Split version
- Feature / config version
- Training image digest
- Random seed
- Experiment run ID
- Metrics
- Environment / dependencies

## Configs

- `configs/data/` — dataset contracts
- `configs/model/` — architecture & train hyperparams
- `configs/experiment/` — run composition (dataset + model + eval)

Prefer CLI / pipeline execution for promoted runs; notebooks may launch tracked experiments but must not silently publish the production champion.
