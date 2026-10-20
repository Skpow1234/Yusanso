# Dataset card — PTB-XL

## Summary

Open clinical 12-lead ECG dataset: **21,799** recordings from **18,869** patients with diagnostic statement annotations ([PhysioNet](https://physionet.org/content/ptb-xl/)).

## Intended use (this platform)

Research benchmarking for:

1. Normal vs abnormal
2. Diagnostic superclass
3. Multilabel diagnostic statements
4. Rhythm / form / signal-quality (progressive)
5. Multimodal waveform + metadata (later)

## Access

Follow PhysioNet credentialing and licensing. Do not commit raw waveforms to Git. Use DVC / object storage for local and shared environments.

## Splits

Patient-level exclusivity required. Split registry versions are versioned under `data/splits/` (gitignored derived artifacts; manifests via DVC).

## Known considerations

- Class imbalance across diagnostic statements
- Sampling rate variants (100 Hz / 500 Hz)
- Signal quality and artifact variability
- Metadata missingness

## Safety

Not for clinical decision-making without separate validation and regulatory review.
