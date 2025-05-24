---
layout: page
title: Tags
permalink: /tags/
---

{% for category in site.categories %}
  {% assign tag_name = category[0] | strip %}
  {% unless tag_name == "" or tag_name == "TIL" %}
    <details>
      <summary><strong>{{ tag_name }}</strong> ({{ category[1] | size }} posts)</summary>
      <ul>
        {% for post in category[1] %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
        {% endfor %}
      </ul>
    </details>
  {% endunless %}
{% endfor %}
