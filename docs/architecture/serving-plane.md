# Serving plane

```text
Client → Ingress → KServe InferenceService
              → Preprocess Runtime → Model Runtime → Postprocess
              → Research Prediction Response
```

## Response shape (technical, non-clinical)

```json
{
  "model_version": "...",
  "task": "...",
  "scores": {},
  "threshold_config_version": "...",
  "request_id": "..."
}
```

## Runtime options to compare

- Native PyTorch FastAPI
- TorchScript where relevant
- ONNX Runtime (CPU / GPU)
- KServe custom runtime
- Optional Triton (only if GPU / multi-model needs warrant it)

## Benchmarks

p50 / p95 / p99 latency, throughput, cold start, memory, CPU/GPU utilization, batch-size curves, serialization overhead, model-loading time.

**Never present the API as a certified diagnostic endpoint.**
