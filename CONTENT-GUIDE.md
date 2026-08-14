# Content guide

How work is organized on this site, and the distinctions that are easy to lose
between one student and the next. Read this before adding a project, a piece of
software, or a repository link.

## Projects are the unit

A **project** is a research question, not a piece of code and not a grant. It is
what makes a long list of otherwise unrelated systems legible: readers should be
able to see *why* something was built, not just *that* it was.

Each project page carries:

- the question it set out to answer
- **software** it produced (see below)
- **papers**, linked to their pages under `content/publication/`
- **coverage**, when the press picked it up — this is often what makes an older
  project intelligible to a reader who was not around at the time
- the years it ran, and optionally the funding that supported it

Finished projects stay in `content/project/` alongside active ones and are marked
past with front matter. Do **not** move them to a separate section or URL prefix.
We have twice had to repair link rot caused by reorganizing URLs; a status flag
costs one line and breaks nothing.

## Software vs. paper artifacts

Both are code in a repository. The difference is the audience and what we are
promising them.

| | Released tool | Paper artifact |
| --- | --- | --- |
| Serves | someone running it on **their** data | a reader reproducing **our** result |
| Named for | itself (`borges`, `sentinel`) | its venue (`2026-IMC-Calypso`) |
| Lifecycle | maintained, versioned | frozen at camera-ready |
| Success | "it worked on my input" | "Figure 5 regenerates" |
| Listed on | the software index and its project page | its publication page only |

The software index exists to say *these are things you can use*. Every entry that
does not honour that promise makes the rest less believable, which is why paper
artifacts are linked from publications instead.

This is a status we grant, not a fact about where the code came from. A paper
artifact can become a tool — that is a good outcome, not a category error.

### Before listing something as software

- One canonical repository, named for the tool rather than a venue
- A licence (see below)
- A README saying what it does and how to run it on someone else's input
- Not frozen to a submission; if there are several venue-named copies, promote
  one and have the others point at it

Calypso and Hidden DNS are the current examples of code that could be promoted
but has not been: each exists as several venue-named repositories. Until one is
made canonical, they are listed as paper artifacts.

## Licensing

Default is **MIT for code** and **CC BY 4.0 for bundled datasets**, stated in the
README. Permissive licensing is deliberate: these tools earn their keep by being
adopted and cited, and copyleft would exclude the industry and collaborator use
that drives adoption.

Two things to remember:

- Public on GitHub is **not** permission. Without a licence, others may read the
  code but may not legally reuse or redistribute it.
- Copyright in software written here generally belongs to **Northwestern**, not
  to the author. Licensing decisions go through INVO. Confirm the default is on
  file before applying it in bulk.

## Linking to old work

Anything on `oldaqualab.cs.northwestern.edu` is served over plain HTTP only —
there is no TLS listener — on a machine nobody maintains. Treat those links as
perishable:

- keep the description of the work **here**, so the record survives the link
- submit the page to the Wayback Machine before linking to it
- link to an archived snapshot when the original is already gone
