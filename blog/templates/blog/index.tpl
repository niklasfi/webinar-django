{% extends 'blog/master.tpl' %}

{% block title %}Index{% endblock %}
{% block mheading %}Blog Index{% endblock %}
{% block body %}
  Welcome to my Blog. You are at the post index.

  {% for post in posts %}
    <article>
      <p>
        {{post.title}} – {{post.published}}
      </p>
    </article>
  {% empty %}
    I'm afraid nothing has been posted, yet. Stay tuned!
  {% endfor %}
{% endblock %}
