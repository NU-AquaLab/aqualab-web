---
title: "Client-Side DNS and Content Delivery"
subtitle: "What third-party resolvers cost you, and how to get the benefits without the penalty."
summary: "Public DNS resolvers gave users faster, more reliable name resolution — and quietly broke the mechanism CDNs use to send clients to a nearby replica. This project measured that interaction and built namehelp, a client-side resolver that keeps the benefits of a third-party service while restoring good replica selection for CDN-hosted content."
authors:
  - "John S. Otto"
  - "Mario A. Sanchez"
  - "John P. Rula"
  - "Fabián E. Bustamante"

tags:
  - DNS
  - Content Delivery
  - Internet Measurement
  - Web Performance
categories:
  - Research
date: "2012-06-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2012-06-01T00:00:00Z"

active_years: "2012–present"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Content delivery networks decide which replica should serve you based on where
your DNS query appears to come from. For most of the Web's history that was a
reasonable proxy: your resolver belonged to your ISP, so it sat near you, and a
CDN steering toward the resolver was steering toward you.

Public resolvers broke that assumption. When users moved to third-party DNS
services for speed, reliability, or filtering, their queries began arriving at
CDNs from somewhere else entirely — and the CDN, doing exactly what it was
designed to do, sent them to a replica near the resolver rather than near the
user. Users adopting a service to make browsing faster could end up fetching
content from much further away.

This project measured that interaction at scale and then did something about it.

---

## Measuring the Interaction

*Content Delivery and the Natural Evolution of DNS* measured the end-to-end cost
of remote DNS on CDN performance, and gave the first evaluation of the
industry's answer to it: the EDNS client-subnet extension, which attaches a
truncated client address to the query so a CDN can steer on the client rather
than on the resolver.

The extension works where it is deployed. The difficulty is that it requires
both the resolver and the CDN to participate, and adoption was thin — so the
performance cost kept falling, unevenly and invisibly, on precisely the content
CDNs work hardest to place well. That gap is what made a client-side answer
worth building.

---

## namehelp

namehelp is the response, built on what the paper calls Direct Resolution: a
proxying DNS server on the user's own machine that keeps a third-party resolver
for general queries — so users keep the reliability and speed they chose it for
— while resolving CDN-hosted names directly, so the query carries the client's
own network position rather than the resolver's. It recovers most of the
performance that remote resolution gives away, and it needs neither the CDN nor
the resolver to agree to anything.

Running at the client is the point. It needs no cooperation from the CDN, no
change at the resolver, and no support from the ISP, which is what made it
deployable by an individual user rather than by agreement among providers.

---

## Software

- **[namehelp]({{< relref "project/namehelp" >}})** — a proxying DNS server that
  keeps the benefits of third-party DNS while avoiding the performance penalty
  for CDN-hosted content. Ten thousand users within a month of release.

---

## Papers

- [Content Delivery and the Natural Evolution of DNS]({{< relref "publication/2012/JOtto-IMC12" >}}) — IMC 2012
- [namehelp: Intelligent, Client-Side DNS Resolution]({{< relref "publication/2012/JOtto-SIGCOMM-Poster12" >}}) — SIGCOMM 2012 (demo)
- [Behind the Curtain – Cellular DNS and Content Replica Selection]({{< relref "publication/2014/JRula-IMC14" >}}) — IMC 2014. Carries the same question into cellular networks, and also belongs to the mobile thread.

---

## Coverage

namehelp was covered by Network World in 2012, and picked up by outlets in
France, Turkey, Brazil, Vietnam, Poland, and Russia.

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [John S. Otto]({{< relref "authors/john-otto" >}})
- [Mario A. Sanchez]({{< relref "authors/mario-sanchez" >}})
- [John P. Rula]({{< relref "authors/john-rula" >}})
- [Ted Stein]({{< relref "authors/ted-stein" >}})

---

## Ongoing Work

The questions namehelp raised — where resolution should happen, and what it
costs the user when it happens somewhere else — are still open, and two efforts
currently under submission continue them: **Onoma**, and a study of **hidden DNS
resolvers**. Both have been presented as posters.

---

## Related Links

- [Decentralization, Privacy and Performance for DNS]({{< relref "publication/2021/RKumar-DNS-Poster" >}}) — SIGCOMM 2021
- [The Aleph]({{< relref "project/thealeph" >}}) — decoding geographic information from DNS records
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
