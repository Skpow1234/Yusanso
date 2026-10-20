# Serving

## FastAPI (explicit control)

Service: [`services/inference-api`](../../services/inference-api/).

- Load champion artifact at startup
- Preprocess parity with training
- Health / ready probes
- Research-only response contract

## KServe (Kubernetes-native)

Versioned InferenceService, autoscaling, runtime benchmarks — see maturity Stages 9–11.

## Batch

[`services/batch-inference`](../../services/batch-inference/) for offline scoring.
