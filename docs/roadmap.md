# Roadmap

Long-horizon eras (platform, not one notebook):

| Era | Focus |
|----:|-------|
| 1 | Reproducible baseline (env, contract, PTB-XL loader, notebooks, patient-safe splits) |
| 2 | Classical benchmark suite |
| 3 | Deep-learning foundation (PyTorch dataset, CNN, GPU) |
| 4 | Architecture zoo (ResNet1D, TCN, RNN, Transformer) |
| 5 | Rigorous evaluation (calibration, multilabel, CIs, subgroups) |
| 6 | Experiment infrastructure (MLflow, DVC, configs, images) |
| 7 | FastAPI serving |
| 8 | Docker/Compose MLOps lab |
| 9 | Kubernetes |
| 10 | Kubeflow Pipelines |
| 11 | KServe |
| 12 | ONNX / performance |
| 13 | Monitoring and drift lab |
| 14 | Multimodal PTB-XL |
| 15 | Representation learning (after supervised baselines) |
| 16 | Model governance (cards, signed artifacts, audit) |
| 17 | Multi-model serving (champion/challenger/shadow) |
| 18 | Optional MIMIC expansion |
| 19 | OSS research platform / plugins |

## First 50 milestones (summary)

Bootstrap → env → PTB-XL downloader/manifest/checksums → schemas → WFDB loader → patient split verifier → core notebooks → classical baselines → metrics/CI/calibration → PyTorch + deep ladder → MLflow/DVC/registry → cards/robustness/ONNX → FastAPI → Docker → Compose → Prometheus/OTel/Grafana → K8s/Helm → Kubeflow → KServe → load tests → promotion/rollback.

Full list: see source planning doc `Advanced Healthcare ML Platform.md` §22.
