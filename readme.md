ῖon
===

ion is a unique creature. It can act like a static site generator,
or a content management system, but ultimately, its goal is broader:
a universal media processing pipeline; one that can generate websites,
apps*, ebooks*, audiobooks*, and perhaps, one day, even real books; an
invisible content management system that watches a folder for changes,
and responds by publishing an optimised version.

**\*** It's still early days; this project is a pre-alpha
minimum-viable-product that's just shy of being production-ready – for
example, the post server is insecure and needs replacing, the query system
needs optimising, etc. This readme describes both where ion is, and also
what it's being designed for – any features that are still up-coming
have been marked with an asterisk.

Reviews
-------

> “Nothing else in the field is attempting to stand on the same ground,
> and very few are even aware that the ground exists. ῖon is the only SSG
> that is designed in such a way that it does not have a hard single-machine
> limit. The others are fast trains on a short track. ῖon is a slow train
> on a track that could, in principle, go anywhere.” – Claude, probably.

One advantage of this script's design is that you can paste it to an LLM
and ask it questions, about where ion is in its development, and how it
would be used. This is useful as ion is currently basically undocumented.

Roadmap
-------

- **Standing on the shoulders of giants**; ion made the odd choice
  of being a shell script. The advantage is that it sits on the ancient
  foundation of Unix, necessarily inheriting its philosophy: an old, boring,
  trusted, standardised, and widely available ground from which ion reaches
  out to the best-in-class for the task at hand, including pandoc, rclone,
  ffmpeg, vips, caddy, esbuild, parallel, and more. This gives it an
  unsurpassable feature-set, quality, and format support, with no
  vendor lock-in or separate data entry step; just a standard
  folder of files, optimised.

- **Intuitive content management**; familiar document-oriented design
  that works across formats, from Markdown to Word, with an integrated
  graph query language. ion can watch or synchronise with virtually all
  types of storage; local, remote, and cloud. This means a user can manage
  their production-grade website solely from their Dropbox app, or iCloud,
  or Amazon S3, or just from their local drive.

- **Parallel build system**; across cores and machines*, indexing,
  filtering, optimising, and publishing potentially massive and disparate
  collections of information, aiming eventually to support inputs the size
  of Wikipedia, and perhaps even the Common Crawl. Eventually, ion aims to
  be able to take snapshots of the web and consolidate them down into a
  single coherent form. Imagine the entire web, collapsed down into a
  single website, or offline app, even one for low-power devices such
  as watches and audio players. For that, the build system would
  need to be able to act across clusters.

- **Generated ahead-of-time**; optimising a single video properly
  requires deriving more than a hundred variations of that file, for
  the different formats, resolutions, and bitrates. For big inputs this
  can grow to be a massive cost, which is why ion has been designed to
  spend this cost only once, up-front, then only rebuilding what has
  changed, and recycling* everything else. ion does this for every
  input type, from documents, to images*, videos*, maps*, data*,
  and even AI filters*.

- **Optimising content server**; ion focuses on generating everything
  ahead-of-time, but it is not solely static; ion also runs a server
  for displaying the optimised output as a website, while running a
  receiver for a rate-limited* and spam-filtered* inbox. At the same
  time, ion continuously watches the input for changes – when the file
  system supports it, or otherwise it spins at an interval – and then
  ion automatically rebuilds the output.

- **Scale, performance, and security**; currently, generally, the
  generation phase is slow, and the production phase is fast – that
  is, slow to build, fast to run. It has been designed so that, in time,
  the performance limitations of its shell nature can be optimised away,
  namely with C. For security, ion is as static as possible, with a small
  runtime footprint and as few moving parts as possible. ion contains
  thorough, almost paranoid, type checking and internal validation,
  for an unusually rock-solid* shell script – perhaps to compensate
  for feelings of insecurity regarding its shell script nature. ion
  is only superficially a shell script though - the shell layer
  negotiates with the host, while acting as a self-extracting
  archive for various Lua filters and C scripts*.

- **Portable, offline-first, and extensible**; ion's output is
  fully self-contained, enabling it to work with or without a connection,
  with full support for third-party development, including JS/CSS document
  components, Lua document filters*, and build scripts*. Soon, ion should
  get the ability to monitor its host: the lone hypervisor, able to down
  on nearly any machine, adapting to the environment, making use of what's
  available – from an old mac to a modern data-centre – responding to
  changes from the user and keeping them updated with status reports,
  all through the file system.

- **International and multilingual**; built from the ground-up with
  translations in mind: document translations can be linked*, directions
  are considered, every word and symbol can be translated, and even the
  query language's word order can be altered, from subject-verb-object
  to verb-subject-object, for example.

- **Open-source**, mostly. Currently, commercial use will usually
  require a licence.

Goal
====

The ultimate goal, beyond consolidating the web and making
it work offline, is to sit as the foundation for an open
federation of interconnected franchises.

The view is that the world needs a safety net. As a
thought experiment, imagine an empire, like a fast-food
franchise, except it's an open, decentralised network of
non-profit, non-loss, nutritionally-balanced restaurants
and hotels that receive and redistribute the fundamentals.
This is the primary reference project – at the heart of a
restaurant is the menu and the ticketing system; a menu is
an inventory; a ticket is a subset of that inventory; a recipe,
and even ingredients are inventories – porridge is a collection
of oats; oats are collections of nutrients; proteins are
collections of amino acids; blogs are collections of
articles; invoices are collections of products and
services; everything is an inventory.

A network of nutritionally-balanced kitchens is essentially
then an accountancy problem, and this is where ion aims to sit,
as the scaffolding that supports the inventory component; a node
that indexes, balances, and connects inventory components together,
so that they may form, in the real world, a decentralised safety net.

Until then, [it also makes nice websites](https://iondigital.uk/).
