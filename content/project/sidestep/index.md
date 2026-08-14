---
title: "SideStep and DraFTP"
subtitle: "Scalable performance detouring through information reuse."
summary: "The default Internet path is often not the best one. SideStep found better paths by reusing CDN redirections rather than probing, giving detouring's benefits at constant per-node overhead — and DraFTP, an open-source FTP suite built on it, demonstrated the gain in software people already used."
authors:
  - "David R. Choffnes"
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Content Delivery
  - Overlay Networks
categories:
  - Research
date: "2007-08-18T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2007-08-18T00:00:00Z"

parent: cdn-reuse
status: past
active_years: "2007–2009"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## In Brief

Many studies have shown that the default Internet path can be suboptimal,
leading to poor throughput between hosts. SideStep was the first scalable and
efficient system to provide free, open access to alternative paths — sometimes
doubling or tripling performance. It reused information from content delivery
networks to locate quality overlay paths and stream data over them, and was
packaged as a Java library and stream API easy to drop into an existing
application.

To demonstrate the effect in something people actually used, we released
**DraFTP**, an open-source FTP suite built on SideStep.

## Motivation and Approach

The Detour study showed Internet paths are generally suboptimal in both latency
and loss. RON — the Reliable Overlay Network project — then showed that
diverting a transfer through an intermediate host often beats the direct path.
Part of the reason is that ISPs carry each other's traffic under business
arrangements, and those arrangements outrank optimal path selection; a
neighbouring ISP may simply have a better route than yours.

RON was never widely deployed because it required active probing with overhead
proportional to the *square* of the number of nodes — unacceptable for
Internet-scale applications with millions of users. The opposite approach,
picking detour points at random, has negligible overhead and rarely helps.

SideStep sat between those extremes: it found high-quality detour points with
high probability at a **constant amount of measurement overhead per node**. It
did so by treating CDN redirection dynamics as hints about good candidates.
*Drafting Behind Akamai* had already shown those redirections are driven
primarily by network conditions; SideStep showed they are cheap to obtain,
cheap to validate, and accurate enough to drive a large-scale detouring service.

In a measurement study across hundreds of computers worldwide, SideStep improved
performance **more than half the time**. The rest of the time there was no better
path to find, so performance was unchanged — it could not make throughput worse,
because candidate paths were evaluated by splitting the stream across the
current and candidate route.

## Why the Names

We called it SideStep because it sidesteps the poor default path. The FTP suite
is DraFTP because, like SideStep, it exploits *drafting*: letting CDNs absorb the
cost of measurement, much as cyclists in a peloton travel fast by letting the
riders in front break the wind.

## On Using Someone Else's Measurements

A recurring question was whether CDNs would try to stop this. They could try,
but it seemed unlikely. Akamai already published measurement information
publicly. SideStep used ordinary DNS lookups to gather hints and downloaded no
content, and those lookups could be as infrequent as once an hour — a negligible
load beside the hundreds of millions of people fetching CDN content daily. The
requests were also indistinguishable from those of any normal user of that
content, making them impractical to filter.

For the avoidance of doubt: this was not AkaRouting, Akamai's paid detouring
service. SideStep was free and used none of its paths.

## Availability

SideStep was distributed as a background service with a stream API, alongside
DraFTP, to users who registered on the lab site. It is no longer available.

---

## Papers

- [On the Effectiveness of Measurement Reuse for Performance-Based Detouring]({{< relref "publication/2009/DChoffnes-INFOCOM09" >}}) — INFOCOM 2009
- [Drafting Behind Akamai (Travelocity-Based Detouring)]({{< relref "publication/2006/AJSu-SIGCOMM06" >}}) — SIGCOMM 2006

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})
- Ao-Jan Su

**Collaborators**

- Aleksandar Kuzmanovic (Northwestern University)

---

## Related Links

- [Reusing CDN Measurements]({{< relref "project/cdn-reuse" >}}) — the project SideStep was built for

</div>
