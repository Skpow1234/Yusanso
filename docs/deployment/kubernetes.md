# Kubernetes & Helm

Layout:

```text
deploy/kubernetes/
  base/
  overlays/
    local/
    staging/
    production-like/
deploy/helm/
```

Grow along the [maturity ladder](../architecture/kubernetes-maturity.md). Kubeflow components live under `pipelines/kubeflow/`. KServe InferenceServices will land under overlays once Stage 9 is active.
