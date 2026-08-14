---
title: "Privacy in Peer-to-Peer Systems"
subtitle: "You are identifiable by whom you connect to, not only by what you download."
summary: "Working with the Amaral lab, we showed that BitTorrent users form stable communities that can be recovered from connection patterns alone — an observer learns what you are interested in without inspecting a single payload. SwarmScreen answers the attack by mixing a fraction of deliberately unrelated connections into a client's behaviour, restoring plausible deniability."
authors:
  - "David R. Choffnes"
  - "Fabián E. Bustamante"

tags:
  - Privacy
  - Peer-to-Peer
  - Network Measurement
  - Complex Networks
categories:
  - Research
date: "2009-06-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2009-06-01T00:00:00Z"

# Finished project. Kept in place and flagged rather than moved -- see CONTENT-GUIDE.md.
status: past
active_years: "2009–2010"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Discussions of privacy in peer-to-peer systems tended to focus on content: what
a user downloads, and who can observe it. This project started from a different
place. In BitTorrent, whom you connect to is itself revealing, because people
with similar interests end up in the same swarms repeatedly, and those repeated
co-occurrences are visible to anyone watching the network.

Working with Luís Amaral's group at Northwestern, we applied community-detection
methods from complex-network analysis to BitTorrent connection patterns. The
result, reported in *Strange Bedfellows*, is that users cluster into stable
communities that persist over time and can be recovered from connection
structure alone — no payload inspection required. An observer who cannot see
what you downloaded can still infer a great deal about what you are interested
in, simply from the company you keep.

The interdisciplinary collaboration was essential here: the measurement side
supplied the traces and the systems questions, and the network-science side
supplied the methods for finding structure in them.

---

## SwarmScreen

If connection patterns are the leak, then the defence has to operate on
connection patterns. SwarmScreen adds a controlled fraction of connections to
swarms the user has no interest in, deliberately blurring the community
structure an observer would otherwise recover.

The design point is plausible deniability rather than concealment. A user's real
activity is still there, but it is no longer separable from behaviour they never
chose, so an observer cannot attribute any particular interest with confidence.
The cost is a tunable amount of extra traffic, which the tech report examines
against the privacy gained.

---

## Software

- **SwarmScreen** — an extension for the Vuze/Azureus BitTorrent client that
  makes users' downloading behaviour difficult to classify from connection
  patterns.
  [Project page](http://www.oldaqualab.cs.northwestern.edu/projects/SwarmScreen.html)

This predates our move to GitHub; the page above is on an archival server that
is HTTP only.

---

## Papers

- [Strange Bedfellows: Communities in BitTorrent]({{< relref "publication/2010/DChoffnes-IPTPS10" >}}) — IPTPS 2010
- [SwarmScreen: Privacy Through Plausible Deniability in P2P Systems]({{< relref "publication/2009/DChoffnes-NU-EECS-TR09" >}}) — Northwestern EECS technical report, 2009

---

## Coverage

*The Register* covered the work in April 2009, under
["P2P eavesdrop 'guilt by association attack' developed"](https://www.theregister.com/security/2009/04/09/p2p-eavesdrop-guilt-by-association-attack-developed/758409).

---

## People

This was joint work with the [Amaral Lab](https://amaral.northwestern.edu/) at
Northwestern.

**Faculty**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)
- Luís A. Nunes Amaral (Northwestern University)

**Students**

- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})

**Collaborators**

- Jordi Duch (Northwestern University)
- Dean Malmgren (Northwestern University)
- Roger Guimerà (Northwestern University)

---

## Related Links

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
