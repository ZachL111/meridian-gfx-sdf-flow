# Review Journal

I treated `meridian-gfx-sdf-flow` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its graphics focus without claiming live deployment or external usage.

## Cases

- `baseline`: `geometry span`, score 158, lane `ship`
- `stress`: `atlas pressure`, score 169, lane `ship`
- `edge`: `shader drift`, score 121, lane `watch`
- `recovery`: `render budget`, score 212, lane `ship`
- `stale`: `geometry span`, score 190, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
