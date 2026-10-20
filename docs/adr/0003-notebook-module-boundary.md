# ADR 0003 — Notebook / module boundary

## Status

Accepted

## Context

Jupyter-first research is required, but notebook-only production logic does not scale to CI, Docker, or Kubernetes.

## Decision

Notebooks discover and explain. Once logic stabilizes, move it into `src/health_ml` and import from notebooks. Final deployed models are trained only via tracked pipelines.

## Consequences

- Many notebooks remain welcome
- Production path is package + pipeline + registry
