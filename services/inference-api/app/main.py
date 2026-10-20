"""FastAPI inference service — loads an immutable model artifact at startup.

Never expose a training endpoint from this service.
Responses are research/engineering outputs, not certified diagnoses.
"""

from __future__ import annotations

from fastapi import FastAPI

app = FastAPI(
    title="ECG Intelligence Platform — Inference",
    description="Research inference API. Not a clinical diagnosis service.",
    version="0.1.0",
)


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}


@app.get("/ready")
def ready() -> dict[str, str]:
    # TODO: verify champion artifact loaded
    return {"status": "ready"}


# POST /predict will be added once serving.runtime is implemented.
