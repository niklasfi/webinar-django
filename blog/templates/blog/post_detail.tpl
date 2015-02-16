{% extends 'blog/master.tpl' %}
{% load humanize %}

{% block title %}{{post.title}}{% endblock %}
{% block mheading %}{{post.title}}{% endblock %}
{% block body %}
  <div>{{post.body|safe}}</div>
  <p>{{post.published|naturaltime}}</p>
  <p><a href="{% url 'blog.views.index' %}">index</a></p>
{% endblock %}
