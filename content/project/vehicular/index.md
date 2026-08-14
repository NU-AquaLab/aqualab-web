---
title: "Vehicular Networks and Simulation"
subtitle: "Cars move on streets, not on random waypoints."
summary: "Vehicular network research was being evaluated with mobility models that bore little resemblance to how cars actually move. STRAW drove simulated vehicles over real street maps under real traffic rules, and the tooling around it — SWANS++ and the Ceratias visualizer — made that kind of experiment repeatable, before later work took the questions out of simulation and into radio propagation measurements on real streets."
authors:
  - "David R. Choffnes"
  - "John S. Otto"
  - "Fabián E. Bustamante"

tags:
  - Vehicular Networks
  - Mobility Models
  - Simulation
  - Wireless
categories:
  - Research
date: "2005-06-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2005-06-01T00:00:00Z"

# Finished project. Kept in place and flagged rather than moved -- see CONTENT-GUIDE.md.
status: past
active_years: "2005–2009"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Around the middle of the 2000s, a great deal of vehicular ad hoc network
research rested on mobility models in which nodes picked a random destination
and moved toward it in a straight line. Cars do not do this. They follow
streets, stop at intersections, queue behind one another, and cluster at exactly
the places where a wireless protocol's assumptions are most likely to fail.

If the movement is wrong, the connectivity patterns are wrong, and so is any
protocol evaluated on top of them. This project set out to fix the foundation
first, and then to check the parts that simulation could not settle.

---

## STRAW

STRAW integrated mobility with traffic: vehicles move over real street maps,
obeying traffic control, with car-following behaviour and congestion emerging
from the interaction rather than being imposed. The result is a simulation in
which vehicle density varies the way it does in a city — thin on arterials
between lights, dense at intersections — which is what determines whether two
cars are ever in range of one another.

STRAW was written for the JiST/SWANS discrete-event simulator, so it could be
used with existing protocol implementations rather than requiring a new
platform.

---

## Tooling

Two pieces of infrastructure grew alongside it. **SWANS++** extended JiST/SWANS
with re-implementations of well-known protocols and mobility models, giving a
common basis for comparison. **Ceratias** added real-time visualization, letting
a researcher watch a simulation as it ran, interact with it, and modify it
online — and detach and re-attach the viewer so the cost was only paid while
someone was watching.

Watching a simulation is underrated as a debugging technique. A mobility bug
that survives a summary statistic rarely survives being seen.

---

## Beyond Simulation

The later work in this thread pushed the questions out of the simulator.
*Exploiting Emergent Behavior for Inter-Vehicle Communication* looked at what
collective vehicle behaviour makes possible for protocol design, and *Down the
Block and Around the Corner* measured how radio propagation actually behaves in
a street grid — where buildings at corners, not distance alone, govern whether
two vehicles can hear each other.

---

## Software

All three shipped together as the **SWANS++** project on SourceForge, which is
still up — the distribution is `straw1_2_1.tar.gz`. It is the only one of the
group's systems from this era that can still be downloaded.

- **STRAW** — an integrated mobility and traffic model for VANETs, implemented
  for the JiST/SWANS discrete-event simulator.
  [SourceForge](https://sourceforge.net/projects/straw/) ·
  [archived project page](https://web.archive.org/web/2006/http://aqualab.cs.northwestern.edu/projects/STRAW/)
- **SWANS++** — extensions to JiST/SWANS, including re-implementations of
  well-known protocols, mobility models, and a steering and visualization tool.
  [SourceForge](https://sourceforge.net/projects/straw/) ·
  [archived project page](https://web.archive.org/web/2006/http://aqualab.cs.northwestern.edu/projects/swans++/)
- **Ceratias** — real-time visualization for JiST/SWANS, supporting interaction
  with and online modification of a running simulation.
  [SourceForge](https://sourceforge.net/projects/straw/)

Our own project pages for these are gone; the links above go to Internet Archive
snapshots of them.

---

## Papers

- [STRAW: An Integrated Mobility and Traffic Model for VANETs]({{< relref "publication/2005/DChoffnes-NWU-CS-05-03" >}}) — Northwestern CS technical report, 2005
- [An Integrated Mobility and Traffic Model for Vehicular Ad Hoc Networks]({{< relref "publication/2005/DChoffnes-VANET05" >}}) — VANET 2005
- [Exploiting Emergent Behavior for Inter-Vehicle Communication]({{< relref "publication/2007/DChoffnes-HotAC07" >}}) — HotAC 2007
- [Down the Block and Around the Corner: The Impact of Radio Propagation on Inter-Vehicle Wireless Communication]({{< relref "publication/2009/JOtto-ICDCS09" >}}) — ICDCS 2009

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})
- [John S. Otto]({{< relref "authors/john-otto" >}})

**Collaborators**

- Randall Berry (Northwestern University)

---

## Related Links

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
