# Promotion plane

A candidate is not deployed merely because training completed.

```text
Unit / data-contract tests
        |
Holdout metrics
        |
Calibration requirements
        |
Subgroup regression checks
        |
Latency / memory benchmark
        |
Model-card completeness
        |
Artifact / security scan
        |
Promote alias: candidate → champion
```

## Registry aliases

| Alias | Meaning |
|-------|---------|
| `candidate` | Passed training; awaiting gates |
| `champion` | Current approved serving version |
| `shadow` | Parallel evaluation traffic |
| `rollback` | Previous known-good |

Do not invent fixed clinical thresholds without evidence. Initial gates are engineering / research regression thresholds relative to approved baselines.

See [../governance/promotion-policy.md](../governance/promotion-policy.md).
