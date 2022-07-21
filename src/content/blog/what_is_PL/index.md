+++
title = "Answering the important questions"
date = 2022-07-20

[extra]
authors = ["tosch"]
subtitle = "\"What is PL?\" and \"How is what you do PL?\""
+++

Here in the MaPLE lab, we treat the techniques students cultivate in their _programming systems_ classes as general methods for answering a broad range of research questions that arise in and around software when it is used in nontraditional ways.  As a result, students without formal training in the techniques we use often ask: "What is PL?," whereas those with training often ask: "How is what you do PL?" 

<!-- This blog post seeks to clarify these questions.  -->

<!-- more -->

# What is PL?

{{ image(src="https://i.imgflip.com/6nd2qf.jpg",
         alt="You must not know about me",
         class="inlineright",
         caption="") }}
Everyone in PL eventually has the experience of telling someone their research area is programming languages and having that person respond with "Oh? What programming language do you study?" This is understandable; many students' first exposure to PL is still via a programming paradigms course, which have [highly variable content](https://blog.sigplan.org/2021/01/28/re-imagining-the-programming-paradigms-course/).
 However, the main gist is that there are a variety of ways we can design what a language looks like (i.e., its primitive components and the rules for combining them, or its _syntax_) and these design choices are supposed to make some things easier than others. Some of the features we believe to be impacted by design are obvious, like [usability](https://blog.sigplan.org/2021/07/06/programming-languages-human-computer-interaction-continuing-the-story-at-splash-2020/) (e.g., the [heated debate](https://wiki.c2.com/?WhyWeHateLisp) about [parentheses of Lisp](https://andreyorst.gitlab.io/posts/2020-12-03-we-need-to-talk-about-parentheses/) vs. [spaces of Python](https://groups.google.com/g/comp.lang.lisp/c/g2K3bDeWTdg)) and some are less obvious, like [performance](https://willcrichton.net/notes/systems-programming/) and [correctness](https://danluu.com/empirical-pl/). Most of these benefits are not just about the language's syntax, but also include reasoning about its _semantics_, or how we should interpret what the program _means_ or _does_. 


However, quite a bit of PL research these days it not about general-purpose programming languages at all!  I'll get more into this in the [section below](#how-is-what-you-do-pl), but for now it can be helpful to just think about PL more abstractly. One of the best high-level views of PL I've seen is Eelco Visser's [PLMW 2019 talk](https://www.youtube.com/watch?v=vyF5d-EFIwU&t), wherein he described **PL as being about "getting stuff for free."** One mechanism for "getting stuff for free" is designing domain-specific languages (i.e., DSLs, languages designed for a limited and highly specialized domain, not necessarily for human end-users) such that we can say meaningful things about them _without actually running them_, using existing tools and techniques.  

When we analyze programs without actually running them, this is called _static analysis_. Intuitively, if you can ask _important questions_ about the range of a program's behaviors _before_ running it, you have higher confidence that fewer bad things will happen. Terms like "important questions" and "bad things" are purposefully vague because they depend on the particular domain you are working in. The more we can cleverly encode information in a language's syntax, the easier it becomes to analyze programs statically. One popular goal in PL research is to find ways to catch problems early.  

{{ image(src="img1.png", 
         alt="Image showing a rough timeline of PL-related tasks in the following order: language design, interpreter implementation, writing a program in the language, running static analyzer, running the program, and finally observing output or error.", 
         caption="A sketch of the ordering of some PL-related tasks you might do.",
         class="full") }}


One common point of confusion for newcomers who have a background in computer science but not PL: we know that answering arbitrary questions about the execution of an arbitrary program is undecidable. In PL, we are typically interested in _specific_ questions about arbitrary programs written in a _specific_ language.

# How is what you do PL?

PL as a field has become [increasingly interdisciplinary](http://www.pl-enthusiast.net/2015/05/27/what-is-pl-research-and-how-is-it-useful/), as researchers [apply PL concepts](http://www.pl-enthusiast.net/2019/02/04/what-is-pl-research-the-talk/) to problems not ordinarily thought of as [within scope](https://blog.sigplan.org/2020/07/29/increasing-the-impact-of-pl-research/). Much of the work we do in MaPLE is deeply interdisciplinary, reflecting this reality. 
One perspective on the evolution of PL that I like is the treatment of languages as part of a programmer's broader toolkit, exemplified in this [2018 CACM article](https://cacm.acm.org/magazines/2018/3/225475-a-programmable-programming-language/fulltext). They mention two affordances of this perspective on PL that I like:

* Enable creators of a language to enforce its invariants, and
* Turn extra-linguistic mechanisms into linguistic constructs. 

We enforce invariants through language design choices, such as prohibiting certain operations (e.g., recursion), making certain constructs atomic (e.g., parallel operators), and equipping programs with complementary systems that encode "extra" information beyond what's necessary to execute the program (e.g., types). 

"Extra-linguistic" mechanisms refers to "stuff" that isn't ordinarily part of a language, but you nevertheless need to be able to reason about programs. In this lab, we often work in contexts where the end result is some kind of statistical analysis. Those analyses are often only valid (in theory, if not in practice!) if certain assumptions about data generating process are true. 

Now, statisticians have devised incredibly clever ways to make up for violations to these assumptions. In this lab, we don't strive to devise new corrections; instead, we try to understand existing problems via assumptions and corrections, and then design systems (such as programming languages, libraries, and frameworks) to either prevent the assumptions from being broken or make diagnosis easier. In that way, we use PL principles to push diagnostics earlier, making it so that we fail faster (a good thing because we don't waste resources!). 

{{ image(src="img2.png",
         caption="",
         alt="",
         class="full")}}


{{ image(src="https://i.imgflip.com/6necwk.jpg",
         alt="To the left to the left. Everything that can, gets moved to the left",
         class="full",
         caption="") }}


Because much of what we do involves deep dives into different data-driven domains, the PL principles that drive our approach aren't always immediately apparent. In the general case this is a good thing &mdash; we don't want to burden domain experts with a novel field when their goal is to just get something done! However, we do uncover interesting properties of programs in these domains that have implications for PL methods. This creates an exciting feedback loop between PL and the domains we work in. 


<span class="tweet">
First lab blog post! Read it to find out what MaPLE is about. :)
<!-- Need to keep a database that matches blog posts to tweet hashes. Use this to select out the tweet to reply to. -->
<!-- Also want to have a check that the tweet is 180chars-length of blog post url (which probably means we want something that compresses the url to a fixed length) -->
</span>



