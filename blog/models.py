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
