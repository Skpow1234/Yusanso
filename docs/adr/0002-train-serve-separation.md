# ADR 0002 — Train / serve separation

## Status

Accepted

## Context

Older patterns sometimes expose training via the public inference API.

## Decision

Training runs only as jobs/pipelines (local, Docker, Kubeflow). Inference loads **immutable** registry artifacts. No public train endpoint on the serving API.

## Consequences

- Clear promotion gates and rollback
- Reproducible lineage via MLflow aliases
- Slightly more infrastructure early on
