# Training image — pin digests in CI; do not bake raw datasets into the image.
FROM python:3.12-slim

WORKDIR /app
COPY pyproject.toml README.md ./
COPY src ./src
RUN pip install --no-cache-dir .

ENTRYPOINT ["health-ml-train"]
