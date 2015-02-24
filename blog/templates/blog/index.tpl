{% extends 'blog/master.tpl' %}
{% load humanize %}

{% block title %}Index{% endblock %}
{% block mheading %}Blog Index{% endblock %}
{% block body %}
  Welcome to my Blog. You are at the post index.

  {% for post in posts %}
    <article>
      <h2>
        <a href="{% url 'blog.views.post_detail' post.pk %}">{{post.title}}</a>
      </h2>
      <div>
        {{post.body|truncatewords_html:"5"|safe}}
        <p>{{post.published|naturaltime}}</p>
      </div>
    </article>
  {% empty %}
    I'm afraid nothing has been posted, yet. Stay tuned!
  {% endfor %}

  <p>
      {% if device_info.type == 'phone' %}
        This is a phone
      {% elif device_info.type == 'tablet' %}
        This is a tablet
      {% elif device_info.type == 'desktop' %}
        This is a desktop
      {% else %}
        We don't recognize the device
      {% endif %}
   </p>
{% endblock %}
