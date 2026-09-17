---
title: "False, Unknown, and the Scientific Value of Not Knowing"
authors:
  - Fabián E. Bustamante

date: 2026-08-17
publication: "Keynote — 1st SIGCOMM Workshop on Negative Results in Network Measurements (NetNeg '26)"
abstract: ""
url_slides: "FBustamante-NetNeg26.pdf"
featured: false
nugget: "A paper is a lossy compression of an investigation, and what it loses first is uncertainty — this talk argues for reporting False and Unknown as the distinct scientific results they are."
---

{{< spoiler text="Abstract" >}}
Research is an investigation; a paper is a lossy compression of it, and much of
the uncertainty disappears in the compression. Experiments have three outcomes,
not two — the evidence supports the hypothesis, refutes it, or is insufficient to
decide — but our publishing conventions file False and Unknown together under
"didn't work." Both are knowledge. A refutation tells us something about the
world, as the CAP theorem and the FLP impossibility result do, and nobody calls
those failures. Unknown tells us something about the limits of our experiment:
underpowered, confounded by the testbed, measuring an ill-defined quantity, run
at insufficient scale. The real damage is done when Unknown is dressed as False
and a question the evidence leaves open is reported closed. The talk works
through a measurement system built to answer True, False, or Unknown — using
latency constraints to decide when a path can be adjudicated at all — and argues
for validating whether a system knows when to trust its answers rather than
validating every answer. It closes on the boundary of this approach: coherent
error, calibrated and wrong at once, of which the "power-law Internet" episode
of 1999–2009 is the cautionary example. Consistency is not correctness, and
detecting coherent error requires independent evidence.
{{< /spoiler >}}
