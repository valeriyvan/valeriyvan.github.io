---
layout: page
title: Tags
permalink: /tags/
---

<!-- Debug: Let's see what site.categories actually contains -->
<h2>DEBUG OUTPUT</h2>
<pre>
site.categories type: {{ site.categories | jsonify }}
</pre>
<p>Categories size: {{ site.categories.size }}</p>
<p>First few categories:</p>
{% for category in site.categories limit: 3 %}
  <pre>Category {{ forloop.index }}: {{ category | jsonify }}</pre>
{% endfor %}

<h2>ACTUAL TAGS</h2>
{% for category in site.categories %}
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
