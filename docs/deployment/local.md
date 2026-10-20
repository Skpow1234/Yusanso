# Local development

## Prerequisites

- Python 3.12+
- [uv](https://docs.astral.sh/uv/) recommended
- Docker (for Compose MLOps lab)

## Setup

```bash
uv sync --all-extras
uv run pre-commit install
uv run pytest
make notebooks
```

## Data

Download PTB-XL per PhysioNet terms into `data/raw/` (gitignored). Use DVC manifests once implemented — do not commit waveforms.

## Compose lab

```bash
make compose-up
```

Services: MLflow (`:5000`), MinIO (`:9000`/`:9001`), inference API (`:8080`), Prometheus (`:9090`), Grafana (`:3000`).
