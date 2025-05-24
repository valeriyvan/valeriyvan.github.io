---
layout: page
title: Tags
permalink: /tags/
---

{% assign sorted_categories = site.categories | sort_natural %}
{% for category in sorted_categories %}
{% assign tag_name = category[0] | strip %}
{% unless tag_name == "" or tag_name == "TIL" %}

<details markdown="1">
<summary><strong>{{ tag_name }}</strong> ({{ category[1] | size }} posts)</summary>

{% for post in category[1] %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}

</details>

{% endunless %}
{% endfor %}
