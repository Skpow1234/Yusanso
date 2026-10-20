# CI/CD

## Pull request

- Format / lint / typecheck
- Unit tests
- Data-contract tests on tiny fixtures
- Selected lightweight notebook lint/execution
- Docker build
- Dependency / image scan
- API contract tests

Do **not** train expensive deep models on every PR.

## Main branch

- Integration environment
- Smoke training on tiny synthetic / sampled data
- Inference image publish
- Helm validation
- Kubernetes smoke tests when runner capacity allows

## Scheduled / manual

Full training, hyperparameter jobs, robustness suite, registration, promotion evaluation.

Workflow stub: [`.github/workflows/ci.yml`](../../.github/workflows/ci.yml).
