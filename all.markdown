---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
  {{ post.body }}
{% endfor %}
</html>
