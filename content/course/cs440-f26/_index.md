---
title: "CS 440: Advanced Networking"
linktitle: "Syllabus"
type: course
weight: 1
summary: "Graduate seminar on advanced topics in computer networking."
layout: "course_detail"

course_code: "CS 440"
course_name: "Advanced Networking"
term: "Fall"
year: 2026
academic_year: "2026-2027"

course_tabs:
  - title: "Syllabus"
    page: "_index"
  - title: "Calendar"
    page: "calendar"
  - title: "Reading Blog & Presentations"
    page: "reading"
  - title: "Reproduction Project"
    page: "project"

---

{{< course_tabs >}}

## Announcements

Remember to check this site (and Canvas) regularly.

**Quick links:**
- [Canvas](TBD)

---

## Staff

**Instructor**
[Fabián E. Bustamante](http://www.cs.northwestern.edu/~fabianb)
Seely Mudd 3509
Email: `fabianb@cs...`

---

## Location and Time

- **Lectures:** Tue/Thu 11:00–12:20 — TBD
- **Professor Office Hours:** By appointment

**Note:** Session dates will be confirmed once the Fall 2026 Northwestern academic calendar is published. The paper list is final.

---

## Course Design & Positioning

CS 440 is part of a three-course arc, each asking a distinct question about networked systems:

**CS 340 — Introduction to Computer Networking** *(prerequisite)*
Teaches you *what* networks do. Using the Kurose & Ross top-down approach, you learn how the layers of the Internet stack function: HTTP, DNS, TCP, UDP, IP, routing algorithms, and link-layer protocols. The course is conceptual and textbook-based, giving you a mental model of the Internet as it is described.

**CS 440 — Advanced Networking** *(this course)*
Asks: *what are the hard design problems in networking, and what does the research frontier look like?* The lens is **systems design** — protocols, architectures, tradeoffs, and implementation choices that make real networks actually work at scale. Papers are drawn from SIGCOMM, NSDI, CoNEXT, and NINeS, the primary venues for systems and design contributions in networking. The project asks you to reproduce a published systems result and then — informed by that experience — write a structured critique of the original paper's claims.

**CS 445 — Internet-Scale Experimentation** *(companion course)*
Asks: *how do we rigorously observe and measure what the Internet actually does, and how do we know when our measurements are trustworthy?* The lens is **empirical methodology** — measurement tools and platforms, dataset biases, quasi-experimental design, and the challenges of inference at Internet scale. Papers come from IMC, TMA, PAM, and measurement tracks across venues.

**How they fit together.** CS 440 asks what we should build; CS 445 asks what is actually out there. They are not redundant — you can take them in either order after CS 340, and many students benefit from taking both. If you are primarily interested in building and understanding systems, take CS 440 first. If you are primarily interested in empirical research and measurement methodology, take CS 445 first.

**A note on NINeS.** This edition of CS 440 includes papers from the inaugural NINeS (New Ideas in Networked Systems, 2026), a new highly selective conference that explicitly favors bold new ideas, fundamental open questions, and approaches that re-frame or debunk current practice. All accepted paper talks are freely available at [nines-conference.org](https://nines-conference.org/).

## Course Prerequisites

The course assumes a basic understanding of topics in networking, such as packet-switching, routing, socket programming, and congestion control, as covered in [CS 340 "Introduction to Computer Networking"](https://www.mccormick.northwestern.edu/computer-science/academics/courses/descriptions/340.html).

If you have taken a similar course somewhere else, please contact me.

---

## Topics

- Network design principles and architecture
- Internet routing and BGP
- Software-defined networks and programmable infrastructure
- Traffic engineering and WAN design
- Congestion control — theory, signals, and practice
- Transport protocols (TCP, QUIC, RDMA)
- Datacenter networking and topology
- ML training networks
- Naming and DNS infrastructure
- LEO satellites and new access infrastructure
- Video QoE and real-time communication
- Mobile and wireless systems design
- Anonymity and privacy infrastructure
- BGP security and routing integrity
- CDN architecture and Internet infrastructure

## Course Organization

Most class meetings are centered on one research topic. Each session pairs a **background paper** — usually a foundational or classic work — with a recent **research paper**. Every student is responsible for one to two conference-style presentations during the quarter. You must submit a reading blog post on the **research paper** before each class.

## Grading

| Component | Weight |
| --------- | ------ |
| Reading blog | 15% |
| In-class participation | 15% |
| Paper presentation | 20% |
| Reproduction project | 50% |

## Academic Integrity

All work submitted must be your own. Blog posts may not be written collaboratively. For the reproduction project, teams may discuss ideas with other teams, but all writing and implementation must be the team's own work. Any use of AI writing tools must be disclosed.

---

## Accessibility

In compliance with Section 504 of the 1973 Rehabilitation Act and the Americans with Disabilities Act, Northwestern University is committed to providing equal access to all programming. Students with disabilities seeking accommodations are encouraged to contact Services for Students with Disabilities (SSD) at +1 847 467-5530 or ssd@northwestern.edu. SSD is located in the basement of Scott Hall. Additionally, I am available to discuss disability-related needs during office hours or by appointment.
