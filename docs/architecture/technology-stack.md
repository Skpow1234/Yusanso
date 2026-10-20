# Technology stack

## Language / tooling

- Python 3.12+
- uv (preferred) or Poetry
- `pyproject.toml`, Ruff, mypy, pre-commit

## Research

JupyterLab, NumPy, pandas / Polars, SciPy, statsmodels, matplotlib, DuckDB, PyArrow / Parquet, WFDB

## Classical ML

scikit-learn, XGBoost, LightGBM, CatBoost

## Deep learning

PyTorch, TorchMetrics, optional Lightning, ONNX Runtime

## Versioning & tracking

DVC, Git, MLflow Tracking + Model Registry, PostgreSQL metadata, MinIO / S3 artifacts

## Orchestration

Local Make / Python first; Kubeflow Pipelines on Kubernetes (not required for simple local experiments)

## Serving

FastAPI, KServe, ONNX Runtime; optional Triton

## Platform

Docker, Compose, Kubernetes, Helm, GitHub Actions

## Observability

OpenTelemetry, Prometheus, Grafana, Evidently (authorized / synthetic data only; never expose PHI)

## Testing

pytest, hypothesis, pytest-cov, pandera, Testcontainers, Locust / k6
