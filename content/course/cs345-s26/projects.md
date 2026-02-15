---
title: "Projects"
type: page
weight: 5
summary: "Projects."
---

{{< course_tabs >}}

## Projects

There are **four projects**, including a MapReduce library and a replicated state machine protocol.

- Teams of **2–3** students (**1 is not allowed**).
- Projects are implemented in **Go**.

Go is garbage-collected and has built-in coroutines (goroutines) and channels, making it well suited for distributed systems. Some useful packages:
- net: https://golang.org/pkg/net/
- rpc: https://golang.org/pkg/net/rpc/

Every project requires a design document before implementation.

### Why We Write Design Documents in This Class ###

Writing design documents is not busywork, but is central to learning distributed systems.

Distributed systems are not primarily about writing code. They are about designing protocols that behave correctly under uncertainty, concurrency, and failure. Correctness emerges from design; code is just the final artifact.

In a single-machine program, you can often “debug your way” to correctness. In a distributed system, that approach fails. Subtle mistakes in assumptions about ordering, failure, or concurrency can produce behaviors that are rare, non-deterministic, and extremely difficult to reproduce. Many real-world outages are not caused by syntax errors, but by flawed protocol reasoning.

A design document forces you to:
- Explicitly define the fault model you are handling.
- Precisely describe the state at each node.
- Specify all message types and how they are processed.
- Clarify timer behavior and failure detection.
- State invariants that must always hold.
- Separate safety (nothing bad happens) from liveness (something good eventually happens).

If you cannot explain how your protocol behaves when messages are delayed, reordered, duplicated, or dropped, then you do not yet understand your system.

Professional distributed systems engineers write specifications before implementation. Consensus protocols, replication systems, distributed databases, and coordination services are designed through careful reasoning about state transitions and failure cases before they are coded.

The design document is your opportunity to demonstrate that you understand the protocol, not just the program.

Writing a design document also develops a critical skill: disciplined thinking in the face of ambiguity. Distributed systems operate in environments where timing is uncertain and failure is normal. You must reason about worst-case behavior, not just the common case.

Finally, separating design from implementation makes your thinking visible. Code can conceal misunderstandings. A design document cannot.

In this course, correctness is not defined by passing tests alone. It is defined by whether your protocol is logically sound under the specified fault model.
