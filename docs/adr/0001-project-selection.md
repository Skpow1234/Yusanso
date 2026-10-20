# ADR 0001 — Project selection

## Status

Accepted

## Context

Six options were evaluated (CardioBench UCI, PTB-XL ECG, multimodal PTB-XL, MIMIC-IV ICU, MIMIC-IV+ECG, serving benchmark lab).

## Decision

Build **Option 2: ECG Intelligence Platform on PTB-XL** first, then evolve toward multimodal PTB-XL and optionally MIMIC tracks.

## Consequences

- Signal processing + classical + deep + GPU + K8s MLOps in one narrative
- Open dataset accessibility for public reproducibility
- Defer credentialed MIMIC work until PTB-XL foundation is mature
