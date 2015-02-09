{% extends 'blog/master.tpl' %}

{% block title %}Index{% endblock %}
{% block mheading %}Blog Index{% endblock %}
{% block body %}
  Welcome to my Blog. Here are some Posts:

  {% for post in posts %}
    <article>
      <h2>{{post.title}}</h2>
      <p>{{post.body}}</p>
    </article>
  {% empty %}
    <p>I'm afraid nothing has been posted, yet. Stay tuned!</p>
  {% endfor %}
{% endblock %}
