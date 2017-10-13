---
title:  "The Critical Importance of Open Recommendation Systems"
author: "Erik Bjäreholt"
description: ""
permalink: /wiki/importance-of-open-recommendation-systems/
tags: psychology behavior recommendation-systems
state: draft
---

<!-- TODO: Reference "Decentralized Social Networks Won't Work" - https://news.ycombinator.com/item?id=15244596 -->
<!-- TODO: Add note that recommendation systems are reinforcing clickbait -->

## Why care? 

Recommendation systems are all around us:

 - Your social media feeds: Facebook, YouTube, Twitter, Reddit, Hacker News, etc.
 - Search results: Google, Amazon, Ebay, etc.
 - Ads: All around the web

They control a large part of your life:

 - Which friends posts you see on social media
 - Which articles you read (and which you don't)
 - Which ads you get served
 - Which search results you see

It seems as if the internet has been pretty polarising. If we could pop more filter bubbles we'd be less ignorant about other peoples positions on issues and would be more likely to interact online. This could lead to a better understanding for each others position and, as a consequence, a better debate.

The information you consume controls you, for better or worse. Yet most people have a questionable information diet (I include myself here). Our bad habits are reinforced by recommendation systems (do you *want* to spend an hour scrolling Facebook?).

When we go on Facebook or any other social media site, we are at their algorithms mercy. They presumably optimize for clicks, time spent, and endless scrolling. That's what they want us to do, but is it what we want out of Facebook?

## What could be different?

If we had full control of the recommendation algorithms, what could we do?

 - We could aggregate all our feeds into one where we decide what we want and what we don't.
 - We could purposefully include content that we wouldn't usually get recommended, just to reduce filter bubbles.
 - We could get one step closer to platform independence. 
   - By aggregating all content in one feed we wouldn't have to choose between Facebook, Twitter and reddit: we could have the best of both worlds.
 - We could decide ourselves on what to filter away. 
   - Do you find that comments containing curse words or have a really low sentiment score rarely contribute to the conversation? Don't show those comments.

## Planning an information diet

Just like the [food pyramid](https://en.wikipedia.org/wiki/Food_pyramid_(nutrition\)) has served to help people plan what they eat, we could suggest a common sense information diet for people as a default and then let them modify it as they wish.

An example (not necessarily a good diet):

 - (~20%) The posts of your closest friends
 - (~20%) The posts of your 2nd degree closest friends (friends of friends)
 - (~40%) Content from Hacker News and/or the subreddits you subscribe to (the reddit/HN algorithm decides)
 - (10%) Content from r/all on reddit  (minimal filters)
 - (5%) Low-scoring content (could be controversial, low quality or recently posted)
 - (5%) Let the Facebook algorithm decide

Here's another example:

 - (10%) The top world news
 - (50%) Programming related from reddit, Hacker News, Twitter
 - (20%) Friends and family  (could be set to zero during working hours)
 - (20%) Memes/jokes  (could be set to zero during working hours)

## Analysing our diet

We could analyse the results of each recommendation rule:

 - How much time did we spend on each post/link? <!-- ActivityWatch could help with collecting click-data and measure engagement time -->
 - Which rules were the most influential? (lead to clicks, engagement, or time spent)

We might even be able to score our diet in various ways:

 - How bubbly is our diet? Which content is notably not in it?
 - Which friends/sources/feeds are the most influential?

### What would be the effect?

**TODO**: Speculation followed by implementation, experimentation, and research.

### This cause has no enemies, only people who ignore it

Social media has had a remarkable impact on society. There have certainly been positive effects, the breaking down of barriers and vastly decreased friction in communication and networking. But it's pretty clear that it hasn't all been unicorns and rainbows.

What I want is for a debate to start and the research to happen. I'd love nothing more than for the existing giants like Facebook, Twitter, and reddit to join us in this research and help us build better social media feeds where the users get more control. 

Unfortunately it seems they aren't interested in that, ads are the primary source of income for all the existing platforms and that's unlikely to change anytime soon. As much as I wish they'd use their enormous influence for good, I'm not holding my breath.

## Problems 

The kind of scraping that would be required for the kind of aggregated feed as presented here might be illegal and at least break the terms of service for the services involved. However, the data could be collected stealthily without letting the service provider know by using browser plugins. The European Union has also gotten a recent interest in getting large companies to reduce barriers for users who wish to switch services, so perhaps there is hope.

### Legal disputes

 - ["LinkedIn: It’s illegal to scrape our website without permission"](https://news.ycombinator.com/item?id=14891301)
    - Update: [The judge ruled in favor of the scraper. LinkedIn will appeal.](https://news.ycombinator.com/item?id=15012883)
 - Facebook v. Power Ventures (Power.com, now defunct)
   - Ended up getting sued by Facebook due to a marketing tactic where they sent PMs through Facebook from the users accounts to their friends. 
   - No idea how similar the idea was, will have to look further into it.
   - [EFF were interested in the case](https://www.eff.org/cases/facebook-v-power-ventures).
   - Another company now owns the domain. 
   - See [comments on HN](https://news.ycombinator.com/item?id=14891301)

## Name for software

 - PersonalFeed? 
   - Taken?
      - Doesn't seem to be. 
   - Domain?

## Ideas for features

 - Offer the black box models of existing platforms as systems to use some of the time. Analyze the results.
 - Offer a view that presents a community-collected "public" database of votes.
   - Could be created from the public data of reddit, HN and Twitter as examples. Even combine/weight them. The most wanted will prevail.
 - Degrees-of-separation to interactor (interactor that votes/likes/comments) for weighting recommendations based on the connectome of the social graph. 
   - This is good protection against shills, since they'd need to infiltrate the social graph in order to get influence.
 - We could implement combined views by filtering/sampling of sources and mixing them. 
   - This seems like a good way to think about it, for me at least.

## Links

<!-- TODO: Twitter iframe for these tweets and add discussion around them inline -->

 - https://twitter.com/naval/status/891025944621727744
    - https://twitter.com/ErikBjare/status/891274989974032388
 - https://www.facebook.com/gdiego.vichutilitarian/posts/1474383972645395


<!--
## Am I crazy or right?

The craziest of the crazy ideas end up being those that turn out to be right against consensus/the status quo/. Because, in hindsight, it turns out it was not the idea that was crazy, it was us for believing so.

Not sure if I'm right but it's pretty damn crazy if true. 

This is why this is a draft. Careful criticism appreciated.


## Related articles

 - [Good software](/wiki/long-software)

## Read more

-->
