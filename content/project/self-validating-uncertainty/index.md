---
title: "Self-Validating Uncertainty"
subtitle: "How to do measurement when you cannot afford ground truth."
summary: "Many measurement systems operate where ground truth is sparse, biased, or prohibitively expensive — and scarcest exactly where uncertainty is highest. Self-Validating Uncertainty argues that validation should shift from correctness to calibration, and that measurement systems should expose the evidence, uncertainty, and assumptions needed to assess and challenge their own reliability claims."
authors:
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Uncertainty
  - Validation
  - Geolocation
  - Research
categories:
  - Research
date: "2026-09-26T00:00:00Z"
lastmod: "2026-11-02T00:00:00Z"
publishDate: "2026-09-26T00:00:00Z"

active_years: "2026–present"

url_project: "/project/self-validating-uncertainty/explorer/"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Internet measurement often has to infer what it cannot directly observe:
locations, dependencies, physical routes, failures. Under this kind of partial
observability, different realities can fit the same evidence, and ground truth
is scarce, selective, or inaccessible — usually scarcest exactly where
confidence is most needed. Yet validation remains tied to correctness: a claim
is trusted only to the extent that it can be individually verified.

We argue that this creates a structural bottleneck. When correctness cannot be
established at scale, validation should shift from **correctness** to
**calibration** — whether a system's stated confidence reflects its error. That
requires outputs that carry auditable descriptions of their own reliability.
Uncertainty must sometimes also be *typed* by its source: a candidate set may
reflect genuine multiplicity in the world or merely insufficient evidence, and
the distinction determines how the result can be validated.

Self-validating uncertainty does not overcome missing evidence. It makes the
boundaries of what we can claim visible.

**Explore the evidence:** [Interactive HotNets '26 artifact](/project/self-validating-uncertainty/explorer/)

---

## Case Study: Inferred Internet-Path Geolocation

We test the idea on roughly 408,000 inferred Internet paths, of which only
4,678 (about 1.1%) have reference locations from active validation — and that
pool is not a random sample, since shorter paths are easier to validate. Every
path carries ℛ, a label-free *path–model alignment* score. ℛ is not a
probability of correctness; instead, scarce labels are used to estimate how
often paths in each ℛ group are correct, with uncertainty intervals.

A ground-truth-withholding experiment shows the resulting **validation
dividend**: as labels are removed, correctness-based validation collapses in
proportion to the labels available, while group-level reliability estimation
degrades far more gracefully. The same analysis also shows its limits — a
precise estimate in the labeled pool does not by itself establish that it
transfers to the corpus.

The [interactive artifact](/project/self-validating-uncertainty/explorer/)
lets you vary the label budget and sampling regime, inspect where labels land
in individual simulation draws, and examine whether the labeled sample can
speak for the corpus. It is built directly from the experimental exports.

---

## Publications

{{< paperblock
    title="Self-Validating Uncertainty: Or, How to Do Measurement When You Cannot Afford Ground Truth"
    paper="/publication/2026/fbustamante-hotnets26/FBustamante-HotNets26.pdf"
>}}
In our HotNets 2026 paper, with Santiago Klein, Caleb Wang, Kedar Thiagarajan, and Ying Zhang, we argue that when ground truth is scarce, measurement systems should validate calibration rather than correctness, and make every answer say what kind of uncertainty it carries. Applying this to infrastructure mapping, and testing it with a ground-truth-withholding experiment on path geolocation, we show the validation dividend this buys and the assumptions it rests on.
{{< /paperblock >}}

---

## People

**PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [Santiago Klein]({{< relref "authors/santiago-klein" >}})
- [Caleb Wang]({{< relref "authors/caleb-wang" >}})
- [Kedar Thiagarajan]({{< relref "authors/kedar-thiagarajan" >}})
- [Ying Zhang]({{< relref "authors/ying-zhang" >}})

---

## Related Links

- [Interactive artifact](/project/self-validating-uncertainty/explorer/)
- [Paper page]({{< relref "publication/2026/FBustamante-HotNets26" >}})
- [The Aleph]({{< relref "project/thealeph" >}}) — LLM-based network geolocation
- [Calypso](https://www.calypso.voyage/) — mapping traceroute paths onto submarine cables ([project]({{< relref "project/scn-criticality" >}}))
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
