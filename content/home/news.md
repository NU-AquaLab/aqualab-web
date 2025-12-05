---
widget: pages          # v1 name; in newer docs this is called "collection"
headless: true         # this file is a homepage section, not its own page

title: Recent News
subtitle: ""           # optional small text under the title

# Order on the homepage (lower = higher up)
weight: 40             # tweak relative to your other home/*.md files

content:
  # What to pull
  filters:
    folders:
      - news           # use content/news/** (your Aleph item etc.)
    tag: ""
    category: ""
    publication_type: ""
    author: ""
    featured_only: false
    exclude_featured: false
    exclude_future: false
    exclude_past: false

  # How many items
  count: 3             # show 3 most recent news
  offset: 0
  sort_by: "Date"
  sort_ascending: false

design:
  view: compact   
  columns: "1" 
  show_image: false      

  # Optional: show a "See all news" link if you have more than `count`
  archive:
    enable: true
    text: "See all news"
    link: "news/"
---

