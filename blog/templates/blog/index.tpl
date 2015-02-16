{% extends 'blog/master.tpl' %}
{% load humanize %}

{% block title %}Index{% endblock %}
{% block mheading %}Blog Index{% endblock %}
{% block body %}
  Welcome to my Blog. You are at the post index.

  {% for post in posts %}
    <article>
      <p>
        <a href="{% url 'blog.views.post_detail' post.pk %}">
          {{post.title}}
        </a>
         – {{post.published|naturaltime}}
      </p>
    </article>
  {% empty %}
    I'm afraid nothing has been posted, yet. Stay tuned!
  {% endfor %}
{% endblock %}
