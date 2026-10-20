# Inference image — load immutable model artifacts at startup.
FROM python:3.12-slim

WORKDIR /app
COPY pyproject.toml README.md ./
COPY src ./src
COPY services/inference-api ./services/inference-api
RUN pip install --no-cache-dir ".[serving]"

EXPOSE 8080
CMD ["uvicorn", "app.main:app", "--app-dir", "services/inference-api", "--host", "0.0.0.0", "--port", "8080"]
