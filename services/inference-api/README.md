# Inference API

Custom FastAPI runtime for explicit engineering control.

- Loads an **immutable** model artifact at process startup
- Separate from training jobs / Kubeflow pipelines
- Returns technical metadata (`model_version`, `task`, `scores`, `request_id`)
- **Not** a certified diagnostic endpoint

See [docs/deployment/serving.md](../../docs/deployment/serving.md).
