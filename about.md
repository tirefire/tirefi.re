---
layout: page
title: About
permalink: /about/
---

Hi, welcome to [tirefi.re](http://tirefi.re). If you want to be involved invite yourself by submitting a PR or [joining the Slack channel](http://signup.hangops.com/) #tirefire on [Hangops Slack](https://hangops.slack.com). You can also just [tweet at us](https://twitter.com/tirefirebot) or just share some of the links with people. We prefer that you use the site for [#hugops](https://twitter.com/search?q=%23hugops) not harm.

<div class="trigger">
In no particular order, these are our tire fires:
  <ul>
    {% for my_page in site.pages %}
      {% if my_page.title and my_page.webring == true %}
      <li>
        <a class="page-link" href="{{ my_page.url | prepend: site.baseurl }}">{{ my_page.url }}</a>
      </li>
      {% endif %}
  {% endfor %}
</ul>
</div>

tirefi.re uses Jekyll templating with a slightly customized base theme. You can find information at [jekyllrb.com](http://jekyllrb.com/)

You can find the source code for the Jekyll new theme at:
{% include icon-github.html username="jglovier" %} /
[jekyll-new](https://github.com/jglovier/jekyll-new)

You can find the source code for Jekyll at
{% include icon-github.html username="jekyll" %} /
[jekyll](https://github.com/jekyll/jekyll)
