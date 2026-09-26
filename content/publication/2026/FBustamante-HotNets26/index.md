---
title: "Self-Validating Uncertainty: Or, How to Do Measurement When You Cannot Afford Ground Truth"
authors:
  - Fabián E. Bustamante
  - Santiago Klein
  - Caleb Wang
  - Kedar Thiagarajan
  - Ying Zhang

date: 2026-09-26
publication: "HotNets '26"
abstract: ""
featured: false
nugget: "When ground truth is scarce, validate calibration rather than correctness, and make every answer say what kind of uncertainty it carries."
---

{{< spoiler text="Abstract" >}}
Many measurement systems operate in regimes where ground truth is sparse, biased, or prohibitively expensive to obtain. The problem is not merely that labels are scarce, but that they are scarcest exactly where uncertainty is highest. Yet validation remains tied to correctness: a claim is trusted only to the extent that it can be individually verified.

We argue that this creates a structural bottleneck. When correctness cannot be established at scale, validation should shift from correctness to calibration: whether a system's stated confidence reflects its error. This requires outputs that carry auditable descriptions of their reliability.

Internet measurement provides a demanding test case because ground truth is often unavailable precisely where confidence is most needed. Applying this perspective to infrastructure mapping reveals an additional requirement: uncertainty must sometimes be typed according to its source. A candidate set may represent genuine multiplicity in the world or merely insufficient evidence, and the distinction determines how the result can be validated.

A ground-truth-withholding experiment demonstrates the resulting validation dividend. As labels are removed, correctness-based validation collapses in proportion to the labels available, while calibration-based validation degrades far more gracefully. The broader lesson is that when ground truth is scarce, measurement systems should be designed not only to produce answers, but also to make the reliability of those answers auditable.
{{< /spoiler >}}
