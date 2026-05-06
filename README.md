# meridian-gfx-sdf-flow

`meridian-gfx-sdf-flow` is a Dart project in graphics. Its focus is to design a Dart verification harness for sdf systems, covering constraint solving, bounded scenario files, and failure-oriented tests.

## Use Case

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Meridian Gfx Sdf Flow Review Notes

The first comparison I would make is `render budget` against `shader drift` because it shows where the rule is most opinionated.

## Highlights

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-gfx-sdf-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `render budget` and `shader drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `geometry span`, `atlas pressure`, `shader drift`, and `render budget`.

The Dart implementation avoids hidden state so fixture changes are easy to reason about.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `recovery` is the high score at 212; `edge` is the low score at 121.

## Future Work

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
