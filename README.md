# Yusanso — ECG Intelligence Platform

Reproducible **research + MLOps** platform for 12-lead ECG intelligence on **[PTB-XL](https://physionet.org/content/ptb-xl/)**: Jupyter-first notebooks, production Python packages, experiment tracking, containerized training, versioned serving, and a staged path to Kubernetes / Kubeflow / KServe.

> **Research and engineering only.** Not a medical device. Not a certified clinical diagnosis API.  
> See [Safety and disclaimer](docs/governance/safety-and-disclaimer.md).

---

## Quick start

```bash
uv sync --all-extras
uv run pre-commit install
uv run pytest
make notebooks
```

Local MLOps lab (MLflow, MinIO, Postgres, inference, Prometheus, Grafana):

```bash
make compose-up
```

Details: [Local development](docs/deployment/local.md).

---

## What this is

```text
Dataset Contract → Data Versioning → Jupyter Research → Promoted Modules
  → Training Pipeline → MLflow → Registry → Validation Gates
  → Immutable Artifact → FastAPI / KServe → Observability → Rollback
```

Training and inference are **separate**. There is no public train endpoint on the inference service.

**Recommended path:** PTB-XL ECG platform → multimodal PTB-XL → serving/benchmark framework → optional MIMIC tracks.

---

## Documentation

Full index: **[docs/README.md](docs/README.md)**

### Architecture

| Doc | Description |
|-----|-------------|
| [Overview](docs/architecture/overview.md) | Lifecycle, planes, progressive path |
| [Data plane](docs/architecture/data-plane.md) | Download → validate → split → features/tensors |
| [Experiment plane](docs/architecture/experiment-plane.md) | Training package → MLflow → registry |
| [Promotion plane](docs/architecture/promotion-plane.md) | Gates, aliases (`candidate` / `champion`) |
| [Serving plane](docs/architecture/serving-plane.md) | InferenceService, response contract |
| [Kubernetes maturity](docs/architecture/kubernetes-maturity.md) | Stages 1–15 ladder |
| [Technology stack](docs/architecture/technology-stack.md) | Languages, ML, platform, observability |

### Architecture Decision Records

| ADR | Title |
|-----|-------|
| [ADR index](docs/adr/README.md) | All decisions |
| [0001](docs/adr/0001-project-selection.md) | Select PTB-XL ECG platform |
| [0002](docs/adr/0002-train-serve-separation.md) | Separate train and serve |
| [0003](docs/adr/0003-notebook-module-boundary.md) | Notebooks discover; modules execute |

### Dataset & model cards

| Doc | Description |
|-----|-------------|
| [Dataset cards](docs/dataset-cards/README.md) | Index |
| [PTB-XL card](docs/dataset-cards/ptb-xl.md) | Primary dataset |
| [Model cards](docs/model-cards/README.md) | Index |
| [Model card template](docs/model-cards/template.md) | Required before `champion` |
| [Experiment reports](docs/experiment-reports/README.md) | Narrative run summaries |

### Deployment

| Doc | Description |
|-----|-------------|
| [Local development](docs/deployment/local.md) | Env, data, Compose |
| [Docker](docs/deployment/docker.md) | Train / inference / notebook images |
| [Kubernetes & Helm](docs/deployment/kubernetes.md) | Base + overlays |
| [CI/CD](docs/deployment/ci-cd.md) | PR / main / scheduled pipelines |
| [Serving](docs/deployment/serving.md) | FastAPI, KServe, batch |

### Governance

| Doc | Description |
|-----|-------------|
| [Healthcare ML methodology](docs/governance/healthcare-ml-methodology.md) | Leakage, metrics, calibration, subgroups |
| [Safety and disclaimer](docs/governance/safety-and-disclaimer.md) | Non-clinical use rules |
| [Promotion policy](docs/governance/promotion-policy.md) | Registry gates and metadata |
| [Reproducibility](docs/governance/reproducibility.md) | Lineage requirements |

### Cross-cutting

| Doc | Description |
|-----|-------------|
| [Notebooks](docs/notebooks.md) | Philosophy and requirements |
| [Notebook index](notebooks/README.md) | `00`–`14` research notebooks |
| [Testing](docs/testing.md) | Unit → data → model → integration → perf |
| [Monitoring](docs/monitoring.md) | System vs model monitoring |
| [Roadmap](docs/roadmap.md) | Eras 1–19 and first milestones |
| [References](docs/references.md) | PhysioNet, MLflow, KServe, WHO/FDA |

### Planning source

| Doc | Description |
|-----|-------------|
| [Advanced Healthcare ML Platform.md](Advanced%20Healthcare%20ML%20Platform.md) | Full options, ranking, and architecture rationale |

### Service & pipeline READMEs

| Doc | Description |
|-----|-------------|
| [Inference API](services/inference-api/README.md) | FastAPI runtime |
| [Batch inference](services/batch-inference/README.md) | Offline scoring |
| [Local pipelines](pipelines/local/README.md) | Make / Python runners |
| [Kubeflow pipelines](pipelines/kubeflow/README.md) | KFP component design |

---

## Repository layout

```text
/
  README.md
  pyproject.toml
  Makefile
  dvc.yaml
  params.yaml
  notebooks/                 # Research (discover & explain)
  src/health_ml/             # Production package (execute)
  services/                  # inference-api, batch-inference
  pipelines/                 # local, kubeflow
  configs/                   # data, model, experiment, serving
  mlflow/                    # tracking server helpers
  docker/                    # train, inference, notebook
  deploy/                    # compose, kubernetes, helm
  monitoring/                # prometheus, grafana, evidently, otel
  tests/                     # unit, data, model, integration, …
  docs/                      # architecture, adr, cards, deployment, governance
  data/                      # raw/processed/splits (gitignored content)
```

---

## Package map (`src/health_ml`)

| Area | Path |
|------|------|
| Config | `config/` |
| Data contracts / ingestion / validation / splits | `data/` |
| Preprocessing & features | `preprocessing/`, `features/` |
| Classical / deep / ensembles | `models/` |
| Training & tuning | `training/`, `tuning/` |
| Evaluation & calibration | `evaluation/`, `calibration/` |
| Explainability | `explainability/` |
| Registry & serving | `registry/`, `serving/` |
| Monitoring utils | `monitoring/` |

---

## Candidate tasks (progressive)

1. Normal vs abnormal ECG  
2. Diagnostic superclass  
3. Multilabel diagnostic statements  
4. Rhythm / form / signal-quality  
5. Representation learning  
6. Waveform + metadata multimodal  

Establish one rigorously reproducible benchmark before expanding.

---

## License & data

Code licensing: see `pyproject.toml` (Apache-2.0).  
**PTB-XL and other clinical datasets** remain under their own PhysioNet / data-use agreements — download locally; do not commit waveforms.
