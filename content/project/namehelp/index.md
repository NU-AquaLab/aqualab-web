---
title: "namehelp"
subtitle: "Better web performance with the DNS service you choose."
summary: "Public DNS services give you faster resolution, better security and better privacy — and quietly send you to CDN replicas up to three times farther away than necessary. namehelp resolved that conflict from the client, without needing the CDN or the resolver to cooperate. It reached ten thousand users within a month of release and was covered in a dozen countries."
authors:
  - "John S. Otto"
  - "Mario A. Sanchez"
  - "John P. Rula"
  - "Fabián E. Bustamante"

tags:
  - DNS
  - Content Delivery
  - Web Performance
categories:
  - Research
date: "2012-10-09T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2012-10-09T00:00:00Z"

parent: dns-client-side
status: past
active_years: "2012–2018"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Overview

namehelp improved web performance by obtaining more accurate redirections to
nearby content delivery network servers. In short: it helped whenever you, or
your ISP, used a remote DNS service.

## The Problem

DNS is the Internet's phone book, and it is invisible to almost everyone. Every
site you visit, every message you send, begins with a lookup; a complex page may
need dozens, and a browser may perform hundreds in a day. Most people never
think about it, because their ISP provides the service transparently.

Over the preceding years, third-party public DNS services from Google, OpenDNS
and Norton had become popular, and for good reasons — better security, better
privacy, faster resolution. Through a large-scale study spanning **over 10,000
hosts in nearly 100 countries**, we found that while public DNS may indeed
resolve names faster, web performance could suffer badly.

The cause is a hidden interaction with another invisible service. More than
**70% of the top 1,000 websites** rely on CDNs, which replicate content across
thousands of servers and steer each user to a nearby copy — using the location
of the user's *resolver* as a proxy for the user. When the resolver is a public
service somewhere else entirely, that proxy fails: users were being sent to
replicas **three times farther away than necessary**.

CDNs and public resolvers were working on a fix, but the proposed standard had
not achieved broad adoption, leaving users choosing between good web performance
and the security and privacy they had switched for.

## What namehelp Did

namehelp let users have both. It ran personalized benchmarks in the background,
from the user's own machine, to determine the optimal DNS configuration, and
when it detected less than optimal web performance it corrected it by
interacting with DNS and CDNs so content came from the nearest available replica.

Beyond benchmarking, which existing tools such as namebench and DNS Benchmark
already did, namehelp added:

- automatic DNS server configuration based on the sites a user actually visits
- caching so frequently-visited sites resolved instantly
- faster failover when a DNS server went down

It installed as a local system service — users pointed their machine at
`127.0.0.1` — with browser extensions for Chrome and Firefox providing a
dashboard.

## Reception

The first release went out on **9 October 2012** for Windows, macOS and
Debian/Ubuntu, with RHEL and CentOS packages following. Within a month it had
**10,000 users**. Coverage in McCormick News led to ACM TechNews, Computerworld
and Network World, and from there to Lifehacker — which brought 2,000 new users
in a single day — and on to outlets in France, Poland, Russia, Turkey, Brazil
and Vietnam. Several reported the tool as speeding up web performance by 40%.

Source was released on 26 October 2012. A Firefox extension followed in 2013, a
2.0 beta for macOS in January 2018, and *Namehelp Mobile* brought DNS
performance comparison to Android.

## Privacy

The privacy policy was deliberately short: namehelp never collected personally
identifiable information or the sites a user visited. Anonymous reporting —
usage statistics, performance-improvement results, benchmark results for a
generic set of popular sites, and results of other network measurements — could
be switched off entirely.

{{< spoiler text="Sinopsis y ¿por qué usar namehelp? (español)" >}}

La página original de namehelp se publicó en inglés y español. Se conserva aquí
la versión en español.

**Sinopsis.** namehelp mejora el rendimiento web obteniendo redirecciones más
apropiadas hacia servidores de contenido más cercanos. Básicamente, namehelp
mejora tu rendimiento web si vos o tu proveedor de internet utiliza un servicio
de DNS remoto.

**¿Por qué usar namehelp?** El Servicio de Nombres de Dominio (DNS) es una
especie de guía telefónica para el Internet y es esencial para su
funcionamiento. La mayoría de nosotros no nos percatamos de su existencia porque
nuestro proveedor generalmente lo ofrece de manera transparente.

Los últimos años han visto el surgimiento de servicios de DNS público ofrecidos
por compañías como Google, OpenDNS y Norton DNS, que presentan ventajas de
seguridad, privacidad y velocidad de resolución. Aun así, a través de un estudio
de gran escala que incluyó a más de 10,000 usuarios en más de 100 países,
nuestro laboratorio descubrió que tu rendimiento web puede sufrir seriamente,
aún cuando el servicio de DNS público efectivamente reduce el tiempo de
resolución.

El problema se debe a la interacción del servicio DNS con las redes de entrega
de contenido (redes CDN). Aproximadamente el 70% de los 1,000 sitios más
populares utilizan redes CDN, que replican el contenido en miles de servidores y
redireccionan a los usuarios al más cercano. La utilización de servicios de DNS
público puede ocasionar que los usuarios sean redireccionados a servidores
¡mucho más lejos de lo necesario!

namehelp te permite obtener lo mejor de ambos mundos — utilizar un servicio de
DNS público sin reducir tu rendimiento web. Ejecuta pruebas desde tu computadora
para determinar tu configuración óptima de DNS y, si determina que estás
recibiendo un rendimiento sub-óptimo, lo corrige automáticamente interactuando
con DNS y CDNs para asegurar que el contenido sea entregado desde la copia más
cercana.

{{< /spoiler >}}

---

## Availability

namehelp is no longer distributed. It was released for Windows, macOS, and
Debian- and RHEL-based Linux, with source available from October 2012.

---

## Papers

- [Content Delivery and the Natural Evolution of DNS]({{< relref "publication/2012/JOtto-IMC12" >}}) — IMC 2012
- [namehelp: Intelligent, Client-Side DNS Resolution]({{< relref "publication/2012/JOtto-SIGCOMM-Poster12" >}}) — SIGCOMM 2012 poster, also in CCR

---

## Coverage

Network World, Computerworld, ACM TechNews and McCormick News (2012); Lifehacker
and ghacks.net (2012); MakeUseOf (2013); and coverage in France (Korben), Poland
(Spider's Web), Russia (Софт@Mail.Ru), Turkey (chip.com.tr), Brazil (IDG Now!,
Dicas para Computador) and Vietnam (PC World VN, Mía Lùi).

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [John S. Otto]({{< relref "authors/john-otto" >}})
- [Mario A. Sanchez]({{< relref "authors/mario-sanchez" >}})
- [John P. Rula]({{< relref "authors/john-rula" >}})
- [Zachary S. Bischof]({{< relref "authors/zachary-bischof" >}})
- [Ted Stein]({{< relref "authors/ted-stein" >}})
- [Dipendra K. Jha]({{< relref "authors/dipendra-jha" >}})

**With thanks to** Andrés Bustamante for the logo, Mario Sánchez for the Spanish
translation, and Richard Campbell and Keith Petersen for early feedback.

namehelp built on namebench, BeautifulSoup, dnspython, Flask, Jinja2, Werkzeug,
graphy, httplib2, ntplib, PyASN1, pydhcplib and Python-RSA.

---

## Related Links

- [Client-Side DNS and Content Delivery]({{< relref "project/dns-client-side" >}}) — the project namehelp was built for

</div>
