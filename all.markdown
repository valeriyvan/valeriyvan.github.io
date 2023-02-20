---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
  {{ post.content }}
{% endfor %}
</html>
