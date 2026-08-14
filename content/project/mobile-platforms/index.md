---
title: "Measurement Platforms for Mobile Devices"
subtitle: "Instruments for seeing what a phone actually does."
summary: "Measuring mobile networks and applications means getting inside a device that is designed to keep you out. This project builds the instruments: MBZ, which intercepts and modifies traffic on the handset itself; BatteryLab, a distributed platform for measuring real power draw on real hardware; and Crowd (Soft) Control, on directing the people carrying the devices."
authors:
  - "James Newman"
  - "John P. Rula"
  - "Fabián E. Bustamante"

tags:
  - Mobile Networks
  - Measurement Platforms
  - Crowdsourcing
  - Energy
categories:
  - Research
date: "2012-02-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2012-02-01T00:00:00Z"

status: past
active_years: "2012–2022"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Studying mobile networks and applications runs into a practical wall: the
device. A phone will not let you sit in the middle of its traffic, its battery
behaviour cannot be simulated convincingly, and the person holding it has their
own plans. Each of those obstacles produced an instrument.

These are tools rather than findings — the apparatus that the measurement
studies in our [mobile thread]({{< relref "project/mobile-edge" >}}) depend on.

---

## MBZ: a middlebox on the handset

Traditional middleboxes see traffic at the far end of the first link, by which
point the interesting attribution — which app, which library, which permission —
is gone. MBZ takes that vantage point and moves it onto the device: an
extensible platform that intercepts and can modify traffic before it leaves the
handset, or on arrival before it reaches the operating system.

Conceptually it gives a middlebox's view with the device's context attached,
which is what makes it possible to ask questions about specific applications
rather than about aggregate flows. *Back in Control* describes the design.

---

## BatteryLab: power measurement on real hardware

Energy claims about mobile software are usually made with models, because
measuring real draw needs physical instrumentation attached to a real device.
BatteryLab is a collaborative platform that shares that instrumentation: devices
wired to power monitors, hosted across sites, available remotely so researchers
can measure genuine power consumption on hardware they do not own.

---

## Crowd (Soft) Control

The third obstacle is the human. Opportunistic sensing takes measurements
wherever participants happen to be, which leaves coverage to chance. Crowd (Soft)
Control asked what becomes possible when participants can be gently steered
toward where a measurement is needed, and the later HotMobile paper takes up the
question of incentives — what actually motivates people to participate, and why
one scheme does not fit every population.

---

## Software

- **Middle-Box Zero (MBZ)** — an extensible platform to intercept and modify
  traffic on the device, before it leaves or before it reaches the OS.
  [GitHub](https://github.com/NU-AquaLab/MBZ)
- **BatteryLab** — a distributed platform for power monitoring of mobile
  devices, led by Matteo Varvello. Its project site no longer resolves; see the
  PAM 2022 paper below.

---

## Papers

- [Crowd (Soft) Control]({{< relref "publication/2012/JRula-HotMobile12" >}}) — HotMobile 2012
- [No One-Size Fits All: Towards a Principled Approach for Incentives in Mobile Crowdsourcing]({{< relref "publication/2014/JRula-HotMobile14" >}}) — HotMobile 2014
- [Back in Control: An Extensible Middle-Box on Your Phone]({{< relref "publication/2020/JNewman-arXiv20" >}}) — arXiv, 2020
- [BatteryLab: A Collaborative Platform for Power Monitoring]({{< relref "publication/2022/MVarvello-PAM22" >}}) — PAM 2022

---

## Coverage

Crowd Soft Control was covered by *Communications of the ACM*, *Wired*, and
Discovery News in 2012.

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [John P. Rula]({{< relref "authors/john-rula" >}})
- James Newman

**Collaborators**

- Matteo Varvello (Nokia Bell Labs)
- Kleomenis Katevas, Mihai Plesa, Hamed Haddadi (Brave Software / Imperial College London)
- Narseo Vallina-Rodriguez (IMDEA Networks)
- Abbas Razaghpanah (Stony Brook University)
- Mark Allman (ICSI)

---

## Related Links

- [Mobile and Cellular Networks from the Edge]({{< relref "project/mobile-edge" >}})
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
