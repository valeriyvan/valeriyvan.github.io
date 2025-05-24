---
layout: page
title: Tags
permalink: /tags/
---

{% assign category_names = site.categories | map: "first" | sort %}
{% for tag_name in category_names %}
  {% assign clean_tag_name = tag_name | strip %}
  {% unless clean_tag_name == "" or clean_tag_name == "TIL" %}
    <h3>{{ clean_tag_name }}</h3>
    <ul>
      {% for post in site.categories[tag_name] %}
        <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    </ul>
  {% endunless %}
{% endfor %}
