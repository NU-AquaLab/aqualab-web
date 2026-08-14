---
title: "Internet Resilience"
subtitle: "What the Internet survives, what it does not, and how we would know."
summary: "The Internet is treated as critical infrastructure but was not designed as such, and much of what makes it hold together — or fail — is invisible from the outside. This is the agenda tying that work together: mapping the physical infrastructure paths depend on, stress-testing the routing system, studying how platforms engineer around failure, and arguing for what a survivable Internet would have to look like."
authors:
  - "Fabián E. Bustamante"
  - "Walter Willinger"

tags:
  - Internet Resilience
  - Critical Infrastructure
  - Internet Measurement
  - Routing
categories:
  - Research
date: "2023-11-28T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2023-11-28T00:00:00Z"

active_years: "2018–present"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

We rely on the Internet the way we rely on power and water, and we reason about
it far less carefully. It was not architected for survivability; the properties
that let it absorb failures are largely emergent, unevenly distributed, and
difficult to observe from outside the organizations that operate it. When
something breaks — a cable, a route, a provider — the consequences are rarely
where anyone expected.

This is the thread pulling that work together. It runs from the physical layer,
where a few conduits on the seabed carry almost everything, up through the
routing system that decides which of them traffic uses, to the platforms that
engineer their own redundancy on top of both. Different layers, one question:
what actually happens when this infrastructure fails, and what would we have to
build to find out before it does?

---

## Re-architecting for Survivability

In November 2023 we convened a two-day NSF workshop in Evanston —
[*Towards Re-architecting Today's Internet for
Survivability*]({{< relref "event/nsf-internet-survivability" >}}) — bringing
together researchers across networking, control theory and security to ask what
a survivable Internet would require, and what research agenda would get us
there.

The [workshop report]({{< relref "publication/2024/FBustamante-CCR24" >}}),
written with the participants and published in CCR, is the clearest statement of
that agenda. A broader argument along the same lines is currently under review.

---

## The Physical Layer

Ninety-nine percent of international data crosses submarine cables, and until
recently networking research treated that infrastructure as a black box. Our
[submarine cable work]({{< relref "project/scn-criticality" >}}) — a project in
its own right, running since 2018 — maps which cables carry which paths, who
controls them, and how failures propagate to users and regions. It is the
physical-layer half of this agenda, and it has its own systems: Calypso for
charting paths through cables, and [Sentinel]({{< relref "project/sentinel" >}})
for tracking failures as they are reported worldwide.

---

## Stress-Testing the Routing System

You cannot experiment on the inter-domain routing system. It is shared, it is
production, and the interesting failures are exactly the ones nobody will let
you cause. **Domino** approaches that by building a testbench for stress-testing
Internet critical infrastructure *in silico* — a way to ask what a given failure
or attack would do, without doing it.

The SRDS 2025 paper on Domino, with Elham Ehsani Moghadam, Adrian Perrig and
Walter Willinger, received the **Best Student Paper Award**.

---

## Resilience as Engineered by Platforms

Large platforms build their own redundancy, and how they do it determines what
their users experience when something underneath fails. *Belt and Suspenders*
studies resilience in TikTok's global video delivery — how a service at that
scale hedges across delivery infrastructure, and what that buys when parts of it
degrade.

This is the layer where resilience stops being a property of the network and
becomes a set of decisions made by whoever operates the service.

---

## Papers

- [Out of Sight, Not Out of Mind: A User-View on the Criticality of the Submarine Cable Network]({{< relref "publication/2020/SLiu-IMC20" >}}) — IMC 2020
- [Towards Re-architecting Today's Internet for Survivability — NSF Workshop Report]({{< relref "publication/2024/FBustamante-CCR24" >}}) — ACM SIGCOMM CCR, 2024
- [Poster: Domino — Towards a Testbench for Stress Testing Internet Critical Infrastructure]({{< relref "publication/2024/EMoghadam-ICNPPoster24" >}}) — ICNP 2024
- [Towards Stress Testing the Internet Inter-Domain Routing System 'in Silico' with Domino]({{< relref "publication/2025/EMoghadam-SRDS25" >}}) — SRDS 2025 · **Best Student Paper**
- [Belt and Suspenders: A Study of Resilience in TikTok's Global Video Delivery]({{< relref "publication/2026/YZhang-CoNEXT26" >}}) — CoNEXT 2026

The submarine cable publications are listed on
[that project's page]({{< relref "project/scn-criticality" >}}).

---

## People

**Leads**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)
- Walter Willinger (Northwestern University)

**Students**

- Elham Ehsani Moghadam
- [Ying Zhang]({{< relref "authors/ying-zhang" >}})
- [Daniel Jang]({{< relref "authors/daniel-jang" >}})

**Collaborators**

- Adrian Perrig (ETH Zürich)

---

## Related Links

- [Criticality of the Submarine Cable Network]({{< relref "project/scn-criticality" >}}) — the physical-layer thread
- [NSF Workshop: Towards Re-architecting Today's Internet for Survivability]({{< relref "event/nsf-internet-survivability" >}})

</div>
