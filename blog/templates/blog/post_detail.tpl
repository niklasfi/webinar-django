{% extends 'blog/master.tpl' %}

{% block title %}{{post.title}}{% endblock %}
{% block mheading %}{{post.title}}{% endblock %}
{% block body %}
  <div>{{post.body|safe}}</div>
  <p>{{post.published}}</p>
  <p><a href="{% url 'blog.views.index' %}">index</a></p>
{% endblock %}
