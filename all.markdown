---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
  {{ post.title }}
  {{ post.content }}
{% endfor %}
</html>
