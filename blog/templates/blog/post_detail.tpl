{% extends 'blog/master.tpl' %}

{% block title %}{{post.title}}{% endblock %}
{% block mheading %}{{post.title}}{% endblock %}
{% block body %}
  <p>{{post.body}}</p>
  <p>{{post.published}}</p>
{% endblock %}
