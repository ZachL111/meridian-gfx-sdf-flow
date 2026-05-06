# meridian-gfx-sdf-flow

`meridian-gfx-sdf-flow` treats graphics as a local verification problem. The Dart implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Meridian Gfx Sdf Flow Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## Useful Pieces

- Includes extended examples for render inputs, including `surge` and `degraded`.
- Documents stable output tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## What This Is For

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## Project Layout

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Architecture Notes

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps geometry data, layout fixtures, and render inputs in one explicit decision path. The threshold is 166, with risk penalty 4, latency penalty 2, and weight bonus 2. The Dart project uses a small library and assertion script, avoiding package dependencies for verification.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Case Study

`surge` is the first example I would inspect because it lands on the `accept` path with a score of 212. The broader file also keeps `degraded` at 39 and `surge` at 212, which gives the model a useful low-to-high spread.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Scope

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Expansion Ideas

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more graphics fixture that focuses on a malformed or borderline input.

## Tooling

The only required setup is the local Dart toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
