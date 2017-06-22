---
title:  "Research debt"
author: "Erik Bjäreholt"
description: ""
confidence: 
state: draft
tags: meta research complexity
---

Research debt is an interesting idea, one I first encountered in [a piece by Google Brain researchers][distill] Chris Olah and Shan Carter. It explores the research equivalent of technical debt and finds some striking similarities along with a real need to try and minimize it in our research.

I've thought about this issue before, but more in the context of education rather than research (I even wrote a paper on it in high school). If things in education were better named, with clearer abstractions, students might have had a more efficient learning experience and would probably have better recollection of the things they've learned.

An intuitive summary of the phenomenon is probably best done by Olah & Carter:

> For centuries, countless minds have climbed the mountain range of mathematics and laid new boulders at the top. Over time, different peaks formed, built on top of particularly beautiful results. Now the peaks of mathematics are so numerous and steep that no person can climb them all. Even with a lifetime of dedicated effort, a mathematician may only enjoy some of their vistas.
>
> People expect the climb to be hard. It reflects the tremendous progress and cumulative effort that’s gone into mathematics. The climb is seen as an intellectual pilgrimage, the labor a rite of passage. But the climb could be massively easier. It’s entirely possible to build paths and staircases into these mountains.1 The climb isn’t something to be proud of.
>
> The climb isn’t progress: the climb is a mountain of debt.


## Characteristics

Olah & Carter presents the following aspects of research debt:

<!-- TODO: Can these be summarized more succinctly? The names of each aspect is vague without much elaboration -->

 - Poor Exposition
 - Undigested Ideas
 - Bad abstractions and notation
 - Noise

It's important to note that you are unlikely to notice when your explantions in writing are bad (verbally you usually get some form of direct feedback indicating when an explanation was bad). This I suspect is at least partially due to the [curse of knowledge](curse-of-knowledge). Olah & Carter elegantly stated:

> The insidious thing about research debt is that it’s normal. Everyone takes it for granted, and doesn’t realize that things could be different. For example, it’s normal to give very mediocre explanations of research, and people perceive that to be the ceiling of explanation quality. On the rare occasions that truly excellent explanations come along, people see them as one-off miracles rather than a sign that we could systematically be doing better.


## Relation to education

Research by Newton almost 400 years ago is now taught in every physics classroom on the planet. Research by 

I suspect there is some form of trickle-down going on here: When researchers avoid research debt, it makes it easier on their readers. And since making it easier to understand makes it easier to teach we end up with being able to teach more clearly and avoid confusion on the part of the learner. 


## Naming things is hard

> "Everything should be made as simple as possible, but no simpler."

As an example of bad naming, let's get into cognitive biases.

A good example is the [Polyanna principle][positivity-bias], which you probably can't figure out anything about from the name. The issue here is that the Polyanna principle has an alternative (newer) name: positivity bias. Now you might actually be able to try and figure out what it is about, and when you read the description, you'll be pleasantly surprised that you might have almost got it right in one of your candidate meanings.

So why is the Polyanna principle named like that? The reason is annoyingly simple: history. The name Polyanna comes from a 1913 novel with the same name. By now, most people don't remember the term "Polyanna principle", but if you'd ask them if they knew about Positivity bias, I predict you'll get a lot more responses indicating familiarity.


## Future of this article

This is a fascinating topic, and I hope to write more about it someday, especially in the context of education. The article in itself might suffer from some research bias, and I'll try and be careful to not include too much.


## Read more

 - [Thread on HackerNews][hn]


[distill]: http://distill.pub/2017/research-debt/
[hn]: https://news.ycombinator.com/item?id=13932806
[curse-of-knowledge]: https://en.wikipedia.org/wiki/Curse_of_knowledge
