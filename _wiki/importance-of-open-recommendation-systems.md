---
title:  "The Importance of Open Recommender Systems"
author: "Erik Bjäreholt"
description: "Algorithms are in control of our attention, so what can we do about it?"
permalink: /wiki/importance-of-open-recommendation-systems/
redirect_from:
  - /wiki/importance-of-open-recommender-systems/
tags: psychology behavior recommender-systems
state: draft
---

<!-- TODO: Reference "Decentralized Social Networks Won't Work" - https://news.ycombinator.com/item?id=15244596 -->
<!-- TODO: Reference "I cured my tech fatigue by ditching feeds" - https://news.ycombinator.com/item?id=15578019 -->
<!-- TODO: Add note that recommendation systems are reinforcing clickbait -->
<!-- TODO: Reference http://marginalrevolution.com/marginalrevolution/2017/11/dont-blame-facebook-failings.html -->
<!-- TODO: Reference https://www.economist.com/news/leaders/21730871-facebook-google-and-twitter-were-supposed-save-politics-good-information-drove-out -->
<!-- TODO: Read this and include quote from Sean: https://www.axios.com/sean-parker-facebook-exploits-a-vulnerability-in-humans-2507917325.html -->

## Why care? 

Recommender systems are all around us:

 - Your social media feeds: Facebook, YouTube, Twitter, Reddit, Hacker News, etc.
   - Controls what you see when you casually browse the web
 - Search results: Google, Amazon, eBay, etc.
   - Controls which needle you find in the haystack
 - Ads: All around the web
   - Steals your attention away from things you care about, directs it to what someone else wants you to care about.

They control a large part of your life:

 - Which posts you see on social media (the big one).
   - Which friends you stay in touch with.
   - Which topics you get exposure to.
   - Which articles you read, and which you don't.
 - Which search results you see
 - Which ads you get served

The information you consume controls you, for better or worse. I'd argue that most people have a questionable information diet (myself included). It gets worse when platforms that depend on your attention have control of what gets shown since they have an incentive to reinforce our bad habits.

Social media has had a remarkable impact on society. There have certainly been positive effects such as the removal of gatekeepers and vastly decreased friction in communication and networking. However, it's pretty clear that it hasn't all been unicorns and rainbows, but what of it?

When we go on our Facebook feed or that of any other social media site, we are at their recommendation algorithms mercy. They presumably optimize for clicks, time spent, and endless scrolling. That's what they want us to do, but is that what we want out of Facebook?

If we could somehow control the recommendation algorithms we would have the ability to decide our own information diet. Would that make a significant difference? I think so.


## What would be different?

If we had full control of the recommendation algorithms, what could we do?

 - We could make the content that is recommended more relevant us.
   - By being able to configure what we are and aren't interested in.
 - We could make the feeds less distracting.
   - By not recommending entertainment and other highly distracting content while working.
 - We could get closer to platform independence. 
   - By aggregating all content in one feed, we wouldn't have to choose between Facebook, Twitter, and Reddit: we could have all the feeds in one place.
 - We could reduce filter bubbles.
   - By purposefully include content that we wouldn't usually get recommended.
 - We could decide ourselves on what to filter away. 
   - Do you find that comments containing curse words rarely contribute to the conversation? Hide them. <!-- or have an unusually negative sentiment score -->


## Planning an information diet

Just like the [food pyramid](https://en.wikipedia.org/wiki/Food_pyramid_(nutrition\)) has served as a heuristic to help people plan what they eat, we could suggest an information diet (or several) for people as a default and then let them modify it as they wish.

An example (not necessarily a good diet):

 - (~50%) Content from Hacker News and your reddit feed (the HN/Reddit algorithm decides)
 - (~20%) The posts of your closest friends
 - (~10%) The posts of your 2nd degree closest friends (friends of friends)
 - (~10%) Content from r/all on Reddit  (minimal filters)
 - (~5%) Low-scoring content (could be controversial, low quality or recently posted)
 - (~5%) Let the Facebook algorithm decide

Here's another example:

 - (~40%) Programming-related posts from Reddit, Hacker News, Twitter
 - (~20%) Friends and family  (could be set to zero during working hours)
 - (~20%) Memes/jokes  (could be set to zero during working hours)
 - (~10%) Global news
 - (~10%) Local news

This is a simple way to configure an information diet, but it suffers from a few issues:

 - What happens when a source is depleted or no longer has high-quality content?
   - The source could be turned off or have it's probability of appearing in the feed decrease as the high-quality content has already been seen.
 - It doesn't take into consideration what you're specifically interested in from those sources.
 - The simplest version delegates to the underlying algorithms for each category.

Despite these issues, the strength of a simple model like this one is that it is easy to understand and modify. So it serves as a good starting point.


## Analysing our diet

We could analyse the results of each recommendation rule:

 - How much time did we spend on each post/link? <!-- ActivityWatch could help with collecting click-data and measure engagement time -->
 - Which rules were the most influential? (lead to clicks, engagement, or time spent)

We might even be able to score our diet in various ways:

 - How bubbly is it? Which content is notably excluded?
 - Which friends/sources/feeds are the most influential?


## What would be the effect?

**TODO**: Speculation followed by implementation, experimentation, and research.


## The status quo

What I want is for a debate to start and the research to happen. It would be amazing if the existing giants (Facebook, Twitter, Reddit) joined us in this research to help build better social media feeds. But unfortunately, they are unlikely to have any interest in that. Ads are the primary source of income for all the dominant platforms, and ad revenue is directly correlated with platform use (endless scrolling). 

That's unlikely to change anytime soon, and as much as I wish they'd use their enormous influence for good, I'm not holding my breath.


## Problems 

The scraping that would be required for the kind of aggregated feed as presented here might be illegal and at least break the terms of service for the services involved. However, the data could be collected stealthily without letting the service provider know by using browser plugins. The European Union has also gotten a recent interest in getting large companies to reduce barriers for users who wish to switch services, so perhaps there is hope.

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
 - Anti-endless scrolling
   - A gentle reminder either when a person has spent more than x minutes on the feed or when feed quality is diminishing due to lack of good content
   - "There will be more good stuff tomorrow"
 - Anti-FOMO
   - Some mechanism to reduce the chance that anything especially interesting isn't seen due to the user not visiting the feed for a few days or more.
   - We could also include a way to view the entire feed history, unlike on Facebook where a page-refresh recalculates the feed.
   - How could that work?

## Links

<!-- TODO: Twitter iframe for these tweets and add discussion around them inline -->

 - [Recommender systems](https://en.wikipedia.org/wiki/Recommender_system) on Wikipedia
 - [Information filtering systems](https://en.wikipedia.org/wiki/Information_filtering_system) on Wikipedia
 - [We're building a dystopia just to make people click on ads | Zeynep Tufekci @ TED 2017](https://www.youtube.com/watch?v=iFTWM7HV2UI)
 - \[podcast\] [Conversation with Thore Husfeldt about the algorithms that run Facebook among other things](https://www.facebook.com/thore.husfeldt/posts/1465597066893486)
 - ["Democracy or Social Media, Pick One"](https://www.facebook.com/gdiego.vichutilitarian/posts/1474383972645395) by Giego Caleiro
 - https://twitter.com/naval/status/891025944621727744
    - https://twitter.com/ErikBjare/status/891274989974032388
 - https://twitter.com/captainsafia/status/929917650943315969
 - https://abebabirhane.wordpress.com/2017/09/20/1162/amp/

<!--
## Am I crazy or right?

The craziest of the crazy ideas end up being those that turn out to be right against consensus/the status quo/. Because, in hindsight, it turns out it was not the idea that was crazy, it was us for believing so.

Not sure if I'm right but it's pretty damn crazy if true. 

This is why this is a draft. Careful criticism appreciated.


## Related articles

 - [Good software](/wiki/long-software)

## Read more

-->
