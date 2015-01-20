<!doctype html>
<html>
  <head>
    <title>Niklas' Blog</title>
  </head>
  <body>
    <h1>Hello World</h1>
    Welcome to my Blog. Here are some Posts:

    {% for post in posts %}
      <article>
        <h2>{{post.title}}</h2>
        <p>{{post.body}}</p>
      </article>
    {% empty %}
      <p>I'm afraid nothing has been posted, yet. Stay tuned!</p>
    {% endfor %}
  </body>
</html>
