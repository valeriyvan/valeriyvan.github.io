---
layout: page
title: All
permalink: /all/
---
<html>
{% for post in site.posts %}
    {% include post.html %}
{% endfor %}
</html>
