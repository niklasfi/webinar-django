{% extends 'blog/master.tpl' %}
{% load humanize %}

{% block title %}{{post.title}}{% endblock %}
{% block mheading %}{{post.title}}{% endblock %}
{% block body %}
  <div>{{post.body|safe}}</div>
  <p>{{post.published|naturaltime}}</p>
  <p><a href="{% url 'blog.views.index' %}">index</a></p>
  <section>
    {% for comment in post.comment_set.all %}
      <p>{{comment.nick}}: {{comment.body}} – <em>{{comment.published|naturaltime}}</em></p>
    {% endfor %}
  </section>
{% endblock %}
