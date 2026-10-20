# Architecture overview

**ECG Intelligence Platform** (PTB-XL first) combines Jupyter-first reproducible research with production Python packages, experiment tracking, containerized training, Kubernetes pipelines, versioned serving, and observability.

## Lifecycle separation

```text
Dataset Contract → Data Versioning → Jupyter Research → Promoted Modules
      → Reproducible Training → Experiment Tracking → Model Registry
      → Validation Gates → Immutable Artifact → Inference Runtime
      → Kubernetes → Observability / Drift → Rollback / Champion-Challenger
```

Training and inference are **separate** concerns. Do not train inside the inference service.

```text
Training Job / Pipeline → MLflow → Model Registry → Validation Gate
      → Approved Version → KServe / FastAPI Runtime
```

## Planes

| Plane | Doc |
|-------|-----|
| Data | [data-plane.md](data-plane.md) |
| Experiment | [experiment-plane.md](experiment-plane.md) |
| Promotion | [promotion-plane.md](promotion-plane.md) |
| Serving | [serving-plane.md](serving-plane.md) |

## Repository layout

See the root [README](../../README.md#repository-layout)

## Progressive path

1. PTB-XL ECG Intelligence Platform (this repo)
2. Multimodal PTB-XL extension
3. Reusable serving / benchmark framework
4. Optional MIMIC-IV / MIMIC-IV-ECG research track
