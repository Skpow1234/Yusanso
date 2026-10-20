# Testing pyramid

## Unit

Signal transforms, shape/dtype invariants, features, losses, metrics, calibration, config parsing.

## Data

Required columns, ranges, sampling frequency, patient-split exclusivity, label distributions, duplicates, missingness regression.

## Model

Deterministic eval forward pass, output shape, probability constraints, serialize/deserialize, ONNX parity, baseline metric regression on fixed fixtures.

## Integration

Tiny train → register → load → infer; MinIO/MLflow/Postgres; KServe smoke; API schema compatibility.

## Performance

Batch-size curves, concurrency, CPU/GPU comparison, soak tests, cold start.

## Layout

```text
tests/unit/
tests/data/
tests/model/
tests/integration/
tests/inference/
tests/performance/
tests/regression/
```
