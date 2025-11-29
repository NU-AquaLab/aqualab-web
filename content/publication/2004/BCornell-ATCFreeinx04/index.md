---
title: "Wayback: A User-level Versioning File System for Linux"
authors:
  - ""
date: 2004-01-01
publication: ""
abstract: ""
url_pdf: "BCornell-ATCFreeinx04.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

In a typical file system, only the current version of a file (or directory) is available. In Wayback, a user can also access any previous version, all the way back to the file’s creation time. Versioning is done automatically at the write level: each write to the file creates a new version. Wayback implements versioning using an undo log structure, exploiting the massive space available on modern disks to provide its very useful functionality. Wayback is a userlevel file system built on the FUSE framework that relies on an underlying file system for access to the disk. In addition to simplifying Wayback, this also allows it to extend any existing file system with versioning: after being mounted, the file system can be mounted a second time with versioning. We describe the implementation of Wayback, and evaluate its performance using several benchmarks.

{{< /spoiler >}}
