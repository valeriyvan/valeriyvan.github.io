---
layout: page
title: All
permalink: /all/
---
{% for post in site.posts %}
  <h1>[{{ post.title }}]({{ post.url }})</h1>
  {{ post.content }}
  ---
  
{% endfor %}
