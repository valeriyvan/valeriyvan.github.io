---
layout: page
title: All
permalink: /all/
---
{% for post in site.posts %}


  [{{ post.date }}: {{ post.title }}]({{ post.url }})
  {{ post.content }}
  ---


{% endfor %}
