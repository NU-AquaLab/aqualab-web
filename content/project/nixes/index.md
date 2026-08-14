---
title: "The Nixes Tool Set"
subtitle: "Installing, maintaining and controlling applications across PlanetLab."
summary: "Running an experiment across hundreds of PlanetLab nodes meant bootstrapping each one, installing packages, deploying files and issuing commands — repeatedly, in parallel, and with some way of finding out what failed. Nixes was the set of bash scripts that made that routine."
authors:
  - "Stefan Birrer"
  - "Fabián E. Bustamante"

tags:
  - Experimentation Platforms
  - PlanetLab
  - Tooling
categories:
  - Research
date: "2005-01-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2005-01-01T00:00:00Z"

parent: edge-measurement
status: past
active_years: "2004–2008"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Overview

Nixes provided a set of bash scripts to install, maintain, control and monitor
applications on **PlanetLab**. It bootstrapped nodes with `yum` and let the user
install RPMs from the PlanetLab distribution. It was designed for simplicity and
performance, and had three parts: the scripts, a configuration file, and a
repository — a public web directory — hosting the application being deployed.

This is the kind of infrastructure that rarely gets written up but without which
none of the wide-area experiments happen.

## The Tools

Every tool took a list of nodes — fully qualified Internet addresses — and
authenticated to them over SSH with a public/private key pair named in the
configuration file.

- **`plsetup`** — bootstraps the vserver with `yum`, `gzip` and Java
- **`plinstallrpm`** — installs RPMs across all nodes, resolving dependencies automatically
- **`pldeploy`** — deploys a file structure to the nodes
- **`plcmd`** — executes an arbitrary set of commands on all nodes, named by an environment variable holding the script

All of them ran in parallel, thirty threads by default, and wrote a per-node log
into the directory named by `TMP`. Only success was reported to the console; a
failure sent you to the logs. Running several tools in parallel yourself was
explicitly discouraged — the logs collide.

## Configuration

A `.nixesrc` in the user's home directory configured everything. Options
included the SSH identity, the PlanetLab slice name, the location of the
bootstrap script, and the base location and list of files and executables to
deploy. Options could equally be set in the environment, sharing a namespace
with the file.

## Bootstrapping

Bootstrapping downloaded a script to each node and ran it, installing `yum` so
that any RPM could subsequently be pulled by name. Custom RPMs not on the Red
Hat mirrors could be added at the top of `bootstrap.sh`.

Java was a special case. Because of Sun's licensing at the time, users had to
download the JDK themselves and host it on a server only they knew about, then
update the location in the bootstrap script — a detail that says a good deal
about the era.

## Implementation and Availability

The scripts were written in bash, with static interleaved scheduling; dynamic
scheduling was noted as a possible improvement that was never made. Nixes was
distributed to users who registered on the lab site, and is no longer available.

Feedback and bug reports went to Stefan Birrer.

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [Stefan Birrer]({{< relref "authors/stefan-birrer" >}})

---

## Related Links

- [Measurement and Experimentation from the Edge]({{< relref "project/edge-measurement" >}})
- [Resilient Overlays and Multicast]({{< relref "project/resilient-overlays" >}}) — Nixes supported those wide-area experiments

</div>
