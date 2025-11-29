---
title: "Project"
type: page
weight: 5
summary: "Quarter-long research project for CS 445."
---
{{< course_tabs >}}

The project is a **central component** of CS 445. Your goal is to pose and investigate a research question that requires Internet-scale experimentation or measurement.

This can involve:

- Extending an existing system or dataset  
- Designing a new measurement  
- Running active experiments  
- Using natural experiments or quasi-experimental design  
- Characterizing an infrastructure component (DNS, CDN, ASes, IXPs, cables, outages, etc.)  
- Applying measurement to understand an Internet phenomenon

Projects are done in groups of **2–3 students**.

---

## Deliverables & Timeline

### **Week 1 — Form a group**
Look for teammates with complementary skills (measurement, data analysis, systems, etc.).

### **Week 2 — Meet with instructor**
Short discussion of your topic direction, feasibility, and data needs.

### **Week 3 — Project Proposal (Canvas)**  
Your proposal should answer the core questions in the *Heilmeier Catechism*:  

1. What problem are you solving?  
2. Why is it important?  
3. What’s your approach?  
4. What will you measure or build?  
5. How will you evaluate success?  
6. What are the risks and unknowns?  
7. What are the milestones?

### **Week 5 — Midterm Presentation & Report**
4 slides:

1. Project name & team members  
2. Revised goals + key concepts  
3. Issues addressed & issues pending  
4. Updated milestones (with timeline)

Short midterm writeup (1–2 pages) explaining progress and risks.

### **Last Class — Final Presentation**
10–12 minute talk + Q&A.

### **Finals Week — Final Report**
Due **Monday of finals week**.

---

## Final Report Format

Format follows the **HotNets** style (6 pages, references excluded).  
Template: <https://conferences.sigcomm.org/hotnets/2023/hotnets23-template.zip>

**Recommended structure:**

- **Abstract** — What you did and what you learned  
- **Problem Statement** — What question you investigated  
- **Prior Work** — What’s been done and why it isn’t enough  
- **Approach** — Measurement/experimental design, datasets, instrumentation  
- **Results** — Findings, figures, analysis  
- **Lessons Learned** — Surprises, mistakes, limitations  
- **Future Work** — What remains open  
- **Conclusions**

Appendices or external webpages may be used to document details.

---

## Resources & Data Sources

Some examples — you are not limited to these:

- **RIPE Atlas** — global active measurement platform  
- **ZMap ecosystem** — scanning, probing, hitlists  
- **Public DNS resolvers and ECS behavior**  
- **CDN request/response measurements**  
- **Traceroutes + submarine cable inference (Calypso)**  
- **Historical outages and censorship events**  
- **AS-level topology (CAIDA, RouteViews, RIPE RIS)**  
- **IP geolocation datasets (IPinfo, MaxMind, iGDB)**

If your project needs access to restricted datasets (e.g., M-Lab, APNIC, private logs) talk with the instructor early.

---

## Expectations

A good project will:

- Ask a question clearly grounded in the Internet  
- Use a method appropriate to real-world constraints  
- Demonstrate creativity in design or analysis  
- Provide reproducibility as far as possible  
- Produce takeaways beyond a narrow dataset

A great project will:  
- Identify something that *matters* to Internet operators, researchers, or users  
- Develop a framework others could reuse  
- Produce at least one non-trivial insight supported by evidence

---

