---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
  <hr>
  {{ post.title }}
  <hr>
  {{ post.content }}
{% endfor %}
</html>
