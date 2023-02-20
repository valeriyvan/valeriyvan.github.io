---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
  <hr>
  <h1>{{ post.title }}</h1>
  <hr>
  {{ post.content }}
{% endfor %}
</html>
