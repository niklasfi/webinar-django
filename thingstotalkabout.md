Concepts:
===
  - **Project/App** Think of an _app_ as a pluggable module to be loaded into
    your site. An _app_ ideally has a defined problem scope as it solves one
    particular problem. An example of this is the _admin_ app which we will use
    later on which provides us with a convenient way of administering our
    database.  Multiple _apps_ are bundled into a _project_. In our case the
    _project_ we create consists of the admin app and an app to serve a blog
    site, which we call _blog_. To create the project run `django-admin
    startproject webinar`.
  - **Folder Layout** After starting your project, a new folder called `webinar`
    appears. Inside of it, you find a script called `manage.py` and another
    folder with the name `webinar`.  From now on, `manage.py` will be your way
    of interacting with django. In fact, lets start our first web server by
    typing `python manage.py runserver`. Now open `localhost:8000` in a web
    browser of your choice.
  - **settings.py** After setting the foundations, there are a few choices for
    us to make: What kind of database do we want? Which locale is to be used?
    The configuraton options in `webinar/settings.py` should be pretty much
    self-explanatory.
  - **Model, View, Controller (MVC)** The MVC-Concept is about separating the
    logic in our application into three distict layers. The persistency layer
    which interfaces with the database builds the foundation. This is called the
    _model_. On top of that, we have the _controller_. It contains the necessary
    business logic and provides the _view_ with information to render html
    templates which are finally output to the user.  After creating the _blog_
    app, we find two files named `models.py` and `views.py` inside the newly
    created folder. As you would suspect, the file `models.py` the models, but
    django's terminology is a little confusing with regards to the controller at
    first. Business logic is defined inside `views.py` instead of a
    hypothetical. This is because the views defined inside `views.py` make up
    the very last part of a long controller pipeline which originally started
    when the http headers were parsed.
