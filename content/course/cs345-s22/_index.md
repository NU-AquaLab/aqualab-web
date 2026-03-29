---
title: "CS 345: Distributed Systems"
linktitle: "Syllabus"
type: course
weight: 1
summary: "Principles and practice of building reliable, scalable distributed systems."
layout: "course_detail"

course_code: "CS 345"
course_name: "Distributed Systems"
term: "Spring"
year: 2022
academic_year: "2021-2022"

course_tabs:
  - title: "Syllabus"
    page: "_index"
  - title: "Calendar"
    page: "calendar"
  - title: "Assignments"
    page: "assignments"
  - title: "Materials"
    page: "materials"

---

{{< course_tabs >}}

## ANNOUNCEMENTS

Remember to check this (and Canvas) regularly!

- Quick links: [Canvas](https://canvas.northwestern.edu/courses/163522) | [Campuswire](https://campuswire.com/c/G652845D4)
 

## STAFF

### Instructor

[Fabián E. Bustamante](http://www.cs.northwestern.edu/~fabianb) 
Seely Mudd #3509 

[fabianb@cs...](http://aqualab.cs.northwestern.edu/)

### TAs

[Rasha Kumar](https://sites.northwestern.edu/rashnakumar/) 
Seely Mudd 
[RashnaKumar2024@u...](http://aqualab.cs.northwestern.edu/)

### PMs

[Vishwani Sati](https://www.linkedin.com/in/vishwanisati/) 

[Sebastian Perez-Delgado](https://www.linkedin.com/in/sebastian-perez-delgado/)

## LOCATION AND TIME

**Lectures: **Tuesdays and Thursdays 11:00-12:20PM | 
Tech L361 ([map](https://www.mccormick.northwestern.edu/contact/tech-room-finder-map.php?id=L361&room-floor=3&room-id=829&room-ingress=))

**Professor Office Hours: ** By appointment

**TA Office Hours: ** 
- Wednesday 1-2PM | Mudd 3532
- Thursday 4-5PM | Mudd 3534
- Friday 3-4PM | Mudd 3532	

**TA/Recitation Sessions:** TBD

**Take-home Final:** Due Wed. June 8, 2022 at 8PM CST

## CATALOG DESCRIPTION

Basic principles behind distributed systems (collections of independent components that appear to users as a single coherent system) and main paradigms used to organize them.

## COURSE PREREQUISITES

- [CS-213 Intro to Computer Systems](https://www.mccormick.northwestern.edu/computer-science/academics/courses/descriptions/213-20.html)
- [CS-214 Data Structures and Algorithms](https://www.mccormick.northwestern.edu/computer-science/academics/courses/descriptions/214.html\)

 In compliance with Section 504 of the 1973 Rehabilitation Act and the Americans with 
Disabilities Act, Northwestern University is committed to providing equal access to all 
programming. Students with disabilities seeking accommodations are encouraged to contact the office of Services for Students with Disabilities (SSD) at +1 847 467-5530 or [ssd@northwestern.edu](mailto:ssd@northwestern.edu). SSD is located in the basement of Scott Hall. Additionally, I am available to discuss disability-related needs during office hours or by appointment.

---

Distributed systems are collections of networked computers that coordinate their actions through message exchanges. Most computing systems you interact with every day are indeed distributed (e.g. email, the Web, Google, Skype, Facebook, ...) for a variety of reasons such as fault tolerance, performance, and the geographical nature of the requirements.

In this course, we will discuss some of the basic principles behind distributed systems as well as common approaches and techniques used to build them. We illustrate these ideas through case studies of widely used or seminal systems.

### SOME OF THE TOPICS COVERED

- Networking and Communication
- Physical and Logical Clocks
- Coordination in Distributed Systems
- Distributed storage and file systems
- Name services
- Global state and transactions
- Replication and consistency
- Consensus
- Fault tolerance
- Security and privacy

## COMMUNICATION CHANNELS

There are a number of communication channels set up for this class:

- We will use the course website and associated Canvas site to post announcements related to the course. You should check this regularly for schedule changes, clarifications and corrections to assignments, and other course-related announcements.
- We will use [Campuswire]() for class discussion. TAs and I will check Campuswire frequently and answer unresolved questions, but you’re also encouraged to collaborate with each other and answer each other’s questions.
- There is always email for questions that would be inappropriate to post on the newsgroup/discussion board. **When using email to contact the staff please start your subject line with "CS345: helpful-comment" to ensure a prompt response.**

## COURSE ORGANIZATION

The course is organized as a series of lecture and paper discussions, four projects, homework assignments, and a take-home final.

- Lectures and discussions - A set of lectures on the core of the material.
- Readings - Textbook and paper reading in preparation for (not substitution of) the lecture.
- Homework assignments - A set of assignments meant as reader enforcers.
- Projects - Four programming projects to give you a better understanding of the subject matter and experience with the Go programming language.
- A take-home final.

### GRADING

I use a criterion-referenced method to assign your grade; in other words, your grade will be based on how well you do relative to predetermined performance levels, instead of in comparison with the rest of the class. Thus, if a test has 100 possible points, anyone with a score of 90 or greater will get an A (90-92: A-), those with scores of 80 or greater will get a B (80-82: B-), those with scores of 70 or greater will get a C, and so on. Notice that this means that if everyone works hard and gets >93, everyone gets an A.

Total scores (between 0 and 100) will be determined, roughly, as follows:

- Homework assignments 20%
- Class participation 15%
- Projects 45%
- Take-home final 20%

### POLICIES

#### Late policy:

Unless otherwise indicated, homework assignments and projects are due by midnight on their due date. If you hand in an assignment late, we will take off 10% for each day (or portion thereof) it is late. Assignments that are **three or more days late** receive no credit.

#### **Cheating vs. Collaboration:**

Collaboration is a really good thing and we encourage it. On the other hand, cheating is considered a very serious offense. When in doubt, remember that it's OK to meet with colleagues, study for exams together, and discuss assignments with them. However, what you turn in must be your own (or for group projects, your group's own) work. Copying code, solution sets, etc. from other people or any other sources is strictly prohibited.

For projects, we do *code walkthrough* by randomly selected groups with the staff. The idea is simple if we pick your group you and your teammates will meet with the TA and/or instructor and walk them through your code, answering any questions they may have. 
**To get full credit you must be able to carry the walkthrough, showing you understand your code.**

Note that our random sampling is **with** replacement, i.e., you may do it multiple times.
