---
layout: post
title: Woodlands CS Club Redesign
categories: programming announcement
tags: [css, html, jekyll] 
---

## Redesign!

On New Year's Day, I redesigned the website for my school's computer science club, which I've been an executive of for two years. [You can visit the new website here!](https://woodlands.codes/){:target="_blank"}

![My Backyard]({{ site.url }}/assets/images/2022-01-08-woodlands-cs-club-redesign/wcs-banner.png)

<div align="center"><em>The main banner of the new site.</em></div><br/>
The new site is based on [YAT Theme](https://github.com/jeffreytse/jekyll-theme-yat){:target="_blank"}, the same theme this website is built on. Many of my design choices for the WCS Club website also apply to this site.

## Old Website

The [previous website](https://old.woodlands.codes/){:target="_blank"} was also built using Jekyll, but had a minimalist theme. It had a navbar on the left regardless of screen size, and only had two sections--a home page and a lesson page.

![The home page of the old website]({{ site.url }}/assets/images/2022-01-08-woodlands-cs-club-redesign/wcs-old.png)

<div align="center"><em>The home page of the old website.</em></div><br/>
The text was sans-serif and had a long line width. Lessons were split using headers, but there were no navigational tools such as a table of contents. The only theme was dark mode, and the highlights were a murky green. It lacked aesthetic appeal, but it was functional.

## Improvements

The goal of the redesign was to create a more navigable user experience using what I learned from building this personal website. I also had the opportunity to strengthen the aesthetic identity of the site. Prioritizing usability should produce a much friendlier site!

### Font and Formatting

The old website used system-ui as the default font with a font size of 16px. This is a poor design choice for a couple of reasons--firstly, [system-ui can default to inappropriate fonts depending on the language of the OS](https://infinnie.github.io/blog/2017/systemui.html){:target="_blank"}, which could be disastrous for readability. Secondly, only using a single font leads to a site without contrast.

On this website, I use a pairing of Merriweather, for headers, and Roboto, for body text. Merriweather is an legible serif font that works beautifully for titles. Roboto is geometric but doesn't get stale to read. My goal was to avoid distraction while maintaining the contrast between serif and sans-serif.

I found Roboto cramped-looking on the Woodlands CS Club website. I compared my redesign with the original site, and although the system-ui font was ugly, it did fill up the screen well.

A wider font was preferable because we often screen-shared the website through Microsoft Teams, so club members were often viewing the website in a smaller window. I ended up using the increasingly popular Proxima Nova.

Oh, and here's a sample! Notice how much more space Proxima Nova fills? It's lovely!

<p style="font-family: ProximaNova; font-size: 18px">Oh, and here's a sample! Notice how much more space Proxima Nova fills? It's lovely!</p>

Taking a look at [a post](https://woodlands.codes/group-b/2021/11/15/group-b-lesson-5.html){:target="_blank"} on the site, you can also see the content width was increased from 960px to 1000px in accordance with the wider font. Note that the original YAT Theme used 920px content width and a 14px Helvetica font.

For a comparison of line widths:

* My Blog (This Website) - 95-100 characters
* [Original YAT Theme](https://jeffreytse.github.io/jekyll-theme-yat/markdown/2018/12/05/an-exhibit-of-markdown.html){:target="_blank"} - 100-105 characters
* [Redesigned WCS Club](https://woodlands.codes/group-b/2021/11/15/group-b-lesson-5.html){:target="_blank"} - 90-95 characters
* [Original WCS Club](https://old.woodlands.codes/group-b/2021/11/14/group-b-lesson-5.html){:target="_blank"} - **180-190** characters

This is the largest visual improvement compared to the original design.

Note that according to traditional line length analysis, the most readable line length is 45-75 characters. While research supports this, I enjoy reading longer line lengths. They require less scrolling and have better screen usage. Some social media sites I use have line lengths upward of 100 characters, so I found it acceptable.

### Code Highlighting

Code highlighting is vastly improved from both the previous iteration of the site and YAT Theme's default. I use Hack font from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts), as it's my preferred terminal font. Plus, inline code is now clearly separated from normal text. It looks like `print("Hi!")`, or as a code block:

{% highlight py %}
# line comment
v = 1
s = "string"

for i in range(-10, 10):
    print(i + 1)

class LinkedList(object):
    def __init__(self, x):
        self.val = x
        self.next = None
{% endhighlight %}

Code block highlighting is done with [Rouge](https://github.com/rouge-ruby/rouge){:target="_blank"} using the Monokai theme. It's performant, compatible with many languages, and looks good on both light and dark themes!

### Navigability

[YAT Theme](https://github.com/jeffreytse/jekyll-theme-yat){:target="_blank"} is seamless to navigate. The table of contents is simple and beautiful. The navbar presents options cleanly and is scroll responsive, and the categories and tags are easy to use! This theme does it all.

Especially compared to the previous design of the website, featuring a navbar stuck to the left with only two pages. I went back and recategorized posts, adding the relevant tags. I rearranged and added headers to produce the detailed table of contents you see on each lesson post.

### Misc.

I learned a lot about the theme! It was interesting seeing which parts broke and which didn't--first inline code embedded in tables would look strange, then I'd notice broken $\LaTeX$ formatting, then misplaced `<br>` tags scattered around from old posts... it took a while to perfect.

The about page was also reworked. I snuck in a photo of myself at the club fair, holding my hand-drawn poster. Hey, make your hard work visible!

But the improvement I'm most proud of is the clearer aesthetic sense. I continued the original theme of green on dark grey, making dark mode default. A brighter green was used for highlights and links.

<img src="/assets/images/2022-01-08-woodlands-cs-club-redesign/wcs-logo.png" alt="" class="img-margin-left img-transparency img-margin-bottom post-img-small float-right">

Lastly, I designed a new logo. It's a simple green, evoking a feeling of technology and modernity. The circles connected by lines recall circuit boards and graph theory, both apt for the club. Also it's a W, in case you can't tell.

Not a bad way for a club to welcome 2022. The new logo seemed extraneous at the time, but now I'm glad I took the time to design it. Sometimes a small bit of aesthetic flair is enough to tie the whole thing together.

## Was it Worth the Effort?

A question always worth asking--was it worth the effort? *Yes*.

The redesign took me three days, with several hours of work per day. I used Neovim as my text editor, with occasional use of Visual Studio Code with the [Neovim addon](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim){:target="_blank"}. My experience with Vim-like editors has been positive, and I'm looking forward to writing a blog post on it. Sure, it's an incidental improvement, but I'm getting more efficient using software I'll use for the rest of my life.

Additionally, the redesign of the WCS site further helped me develop this blog. Code block formatting, improved table colours, $\LaTeX$--these are all features I eventually would've had to add while writing blog posts on *this* site. So it's more convenient for me to discover these issues at once than to find them gradually.

Not to mention the site itself! Each minor improvement makes a big difference, and the redesign allows us to further integrate the site into our lessons. It's a central repository, containing links to our [GitHub](https://github.com/WoodlandsComputerScience/MeetingContent){:target="_blank"} and Discord server. I hope our club finds use for it even after I graduate. That would be nice to see!

