---
layout: page
title: Tags
permalink: /tags/
---

{% for category in site.categories %}
  {% assign tag_name = category[0] | strip %}
  {% unless tag_name == "" or tag_name == "TIL" %}
    <h3>{{ tag_name }}</h3>
    <ul>
      {% for post in category[1] %}
        <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    </ul>
  {% endunless %}
{% endfor %}
