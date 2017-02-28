---
title:  "Good Software"
author: Erik Bj&auml;reholt
description: ""
categories: software
---

<!--
Notes in evernote, note-id: 16d3f69d-e096-430e-b17f-e09447db1980
-->

Good software is a contentious issue, but everyone agrees it's important. Despite being a young programmer, I have learned a thing or two about what makes some software good, or rather, what makes some software bad or nonoptimal. 

It's easy to reduce the good of software to the economic view: the value of a piece of software is equal to the economic good it produces. But how do we ensure that the software continues to provide value, and does not get substituted by *better* software, or alternatively, how do we write better software?


Properties of good software:

 - Provides significant value, either in the short run or [the long run](/wiki/long-software)
 - Reliable/bug-free


The above points seem obvious, but they are essential to formulating the characteristics of good software, which follow below.

Characteristics of good software:

 - Open source
   - Almost mandatory if you want to create long-lived software
   - Helps with reliability (["Given enough eyeballs, all bugs are shallow"](https://en.wikipedia.org/wiki/Linus's_Law))
 - Simple ([but not necessarily easy](https://www.infoq.com/presentations/Simple-Made-Easy))
 - Written in a suitable language
   - Which languages are considered suitable are discussions in themselves, and not something I'll go into great depths about here and now.
   - In some cases it's important to use an accessible language to ease contribution and review, in others it's more important to choose a language with good compile-time verification of the program (typesystems, memory-safety, etc).
 - Quality controlled
   - Code review
   - Well tested (unit tests, integration tests, type checking)
 - Stable APIs
   - If the software in question is a library or is otherwise designed to interact with other software, it needs an interface that other applications can rely on.
 - Fast/[performant](https://stackoverflow.com/questions/2112743/what-does-performant-software-actually-mean) enough

All software does not need all these characteristics to be good, but if it lacks several that's probably a warning sign.

## Related articles

 - [Long software](/wiki/long-software)

## Read more

 - [The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
