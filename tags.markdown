---
layout: page
title: Tags
permalink: /tags/
---

{% comment %} Delimiter for category names - change if any category contains this sequence {% endcomment %}
{% assign delimiter = "|||" %}

{% comment %} Build sortable string of category names {% endcomment %}
{% assign categorylist = "" %}
{% for category in site.categories %}
  {% assign tag_name = category[0] | strip %}
  {% unless tag_name == "" or tag_name == "TIL" %}
    {% if categorylist != "" %}
      {% assign categorylist = categorylist | append: delimiter %}
    {% endif %}
    {% assign categorylist = categorylist | append: tag_name %}
  {% endunless %}
{% endfor %}

{% comment %} Sort and display categories {% endcomment %}
{% assign sorted_categorylist = categorylist | split: delimiter | sort %}
{% for tag_name in sorted_categorylist %}

<details markdown="1">
<summary><strong>{{ tag_name }}</strong> ({{ site.categories[tag_name] | size }} posts)</summary>

{% for post in site.categories[tag_name] %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}

</details>

{% endfor %}
