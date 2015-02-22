from django.db import models

# Create your models here.
class Post(models.Model):
  title     = models.CharField(max_length=128)
  body      = models.TextField()
  published = models.DateTimeField(auto_now_add=True)

  class Meta:
    ordering = ['-published']

  def __str__(self):
    return "{title} ({published})".format(
        title=self.title,
        published=self.published.date()
    )

class Comment(models.Model):
  post = models.ForeignKey('Post')
  nick = models.CharField(max_length=32)
  body = models.TextField()
  published = models.DateTimeField(auto_now_add=True)

  class Meta:
    ordering = ['published']

  def __str__(self):
    return "{nick}: {body}".format(
        nick=self.nick,
        body=self.body
    )
