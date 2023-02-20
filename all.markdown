---
layout: page
title: All
permalink: /all/
---
{% for post in site.posts %}
  [{{ post.date | date: "%A, %B %d, %y" }}: {{ post.title }}]({{ post.url }})
  {{ post.content }}
  ---
  <br>
  <br>
{% endfor %}
