# Data plane

```text
PTB-XL metadata + WFDB waveforms
              |
       Dataset Downloader
              |
       Checksum Manifest
              |
     Raw dataset location
              |
        Data Validation
              |
       Split Registry
              |
    Preprocess / Feature Jobs
              |
  +-----------+-----------+
  |                       |
Parquet metadata       Tensor cache
  |                       |
  +-----------+-----------+
              |
       Training Dataset
```

## Rules

- Do **not** commit the whole dataset into Git
- Use DVC for dataset references / manifests and reproducible derived artifacts
- Patient-level split exclusivity is mandatory
- Signal filtering is an experiment to measure, not a default assumption

## Package map

| Module | Role |
|--------|------|
| `health_ml.data.ingestion` | Download, WFDB load, manifests |
| `health_ml.data.contracts` | Typed schemas |
| `health_ml.data.validation` | Quality checks |
| `health_ml.data.splitting` | Patient-safe splits |
| `health_ml.preprocessing` | Resample, normalize, window |
| `health_ml.features` | Engineered features |
