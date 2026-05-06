# Meridian Gfx Sdf Flow Walkthrough

This note is the quickest way to read the extra review model in `meridian-gfx-sdf-flow`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 158 | ship |
| stress | atlas pressure | 169 | ship |
| edge | shader drift | 121 | watch |
| recovery | render budget | 212 | ship |
| stale | geometry span | 190 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
