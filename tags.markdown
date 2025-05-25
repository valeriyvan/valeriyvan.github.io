---
layout: page
title: Tags
permalink: /tags/
---

<div style="margin-bottom: 20px;">
  <label>
    <input type="radio" name="sortType" value="alphabetical" checked onchange="toggleSort()"> Sort Alphabetically
  </label>
  <label style="margin-left: 15px;">
    <input type="radio" name="sortType" value="frequency" onchange="toggleSort()"> Sort by Frequency
  </label>
</div>

{% comment %} Delimiter for category names - change if any category contains this sequence {% endcomment %}
{% assign delimiter = "|||" %}

{% comment %} Build alphabetically sorted list {% endcomment %}
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
{% assign alphabetical_list = categorylist | split: delimiter | sort %}

{% comment %} Build frequency sorted list {% endcomment %}
{% assign frequencylist = "" %}
{% for category in site.categories %}
  {% assign tag_name = category[0] | strip %}
  {% assign tag_size = category[1].size %}
  {% unless tag_name == "" or tag_name == "TIL" %}
    {% if frequencylist != "" %}
      {% assign frequencylist = frequencylist | append: delimiter %}
    {% endif %}
    {% if tag_size < 10 %}
      {% assign frequencylist = frequencylist | append: "00" | append: tag_size | append: ":" | append: tag_name %}
    {% elsif tag_size < 100 %}
      {% assign frequencylist = frequencylist | append: "0" | append: tag_size | append: ":" | append: tag_name %}
    {% else %}
      {% assign frequencylist = frequencylist | append: tag_size | append: ":" | append: tag_name %}
    {% endif %}
  {% endunless %}
{% endfor %}
{% assign frequency_sorted = frequencylist | split: delimiter | sort | reverse %}

<div id="alphabetical-view">
{% for tag_name in alphabetical_list %}

<details markdown="1">
<summary><strong>{{ tag_name }}</strong> ({{ site.categories[tag_name] | size }} posts)</summary>

{% for post in site.categories[tag_name] %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}

</details>

{% endfor %}
</div>

<div id="frequency-view" style="display: none;">
{% for item in frequency_sorted %}
  {% assign parts = item | split: ":" %}
  {% assign tag_name = parts[1] %}
  {% if tag_name %}
<details markdown="1">
<summary><strong>{{ tag_name }}</strong> ({{ site.categories[tag_name] | size }} posts)</summary>

{% for post in site.categories[tag_name] %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}

</details>
  {% endif %}
{% endfor %}
</div>

<script>
function toggleSort() {
  const sortType = document.querySelector('input[name="sortType"]:checked').value;
  const alphabeticalView = document.getElementById('alphabetical-view');
  const frequencyView = document.getElementById('frequency-view');
  
  if (sortType === 'alphabetical') {
    alphabeticalView.style.display = 'block';
    frequencyView.style.display = 'none';
  } else {
    alphabeticalView.style.display = 'none';
    frequencyView.style.display = 'block';
  }
}
</script>
