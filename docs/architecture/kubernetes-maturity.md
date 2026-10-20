# Kubernetes maturity ladder

Do not begin with a giant cluster. Grow in stages.

| Stage | Focus |
|------:|-------|
| 1 | Local notebooks — EDA and baseline end-to-end |
| 2 | Python package — logic in `src/`; notebooks import it |
| 3 | Dockerized training |
| 4 | FastAPI inference — immutable artifact at startup |
| 5 | Local MLOps stack (Compose: MLflow, Postgres, MinIO, API, Prometheus/Grafana) |
| 6 | Kubernetes base |
| 7 | Kubeflow training pipeline |
| 8 | Automated promotion gate |
| 9 | KServe InferenceService |
| 10 | Canary / shadow experiments |
| 11 | Full observability (OTel, Prometheus, dashboards) |
| 12 | Drift / evaluation lab |
| 13 | Automated rollback on technical SLO signals |
| 14 | GPU optimization |
| 15 | Multi-model architecture under versioned contracts |

Current skeleton targets Stages 1–5 structure with placeholders through Stage 15.
