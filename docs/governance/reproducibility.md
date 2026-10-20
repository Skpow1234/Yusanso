# Reproducibility

Every registered model links to:

```text
Git SHA
Dataset version
Split version
Feature / config version
Training image digest
Random seed
Experiment run ID
Metrics
Environment / dependencies
```

## Practices

- Pin environments via `uv.lock` / lockfile
- Prefer relative paths; never hard-code machine-local data roots in notebooks
- Deterministic fixtures for CI
- Training images identified by digest, not floating tags, for promoted runs
