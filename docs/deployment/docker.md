# Docker images

| File | Purpose |
|------|---------|
| [`docker/train.Dockerfile`](../../docker/train.Dockerfile) | Containerized training |
| [`docker/inference.Dockerfile`](../../docker/inference.Dockerfile) | FastAPI inference |
| [`docker/notebook.Dockerfile`](../../docker/notebook.Dockerfile) | Jupyter research |

Example:

```bash
docker build -f docker/train.Dockerfile -t health-ml-train .
docker run --rm health-ml-train --config configs/model/resnet1d.yaml
```

Pin image digests for promoted training/serving runs.
