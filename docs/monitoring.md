# Monitoring

Distinguish **system** monitoring from **model** monitoring.

## System

Request rate, p50/p95/p99 latency, error rate, model load failures, CPU/GPU/memory, pod restarts, queue depth.

Configs: `monitoring/prometheus/`, `monitoring/grafana/`, `monitoring/otel/`.

## Data / model

Only with authorized or synthetic data:

- Input shape / range validity
- Missing leads
- Sampling-rate mismatch
- Signal-quality statistics
- Score distribution
- Embedding / statistical drift experiments
- Delayed ground-truth evaluation when a legitimate research label later exists

Do **not** label a change in prediction distribution as “patient health deterioration”. It is a model/data observation.

Evidently workflows: `monitoring/evidently/`. Never expose PHI in metrics or traces.
