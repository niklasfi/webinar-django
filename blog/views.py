from django.shortcuts import render
from django.http import Http404
from blog.models import *
from blog.forms import *

# Create your views here.
def index(request):
  posts = Post.objects.all()
  return render(request, 'blog/index.tpl', {'posts': posts})

def post_detail(request, post_pk):
  try:
    post = Post.objects.get(pk=post_pk)
  except Post.DoesNotExist:
    raise Http404('Post does not exist')

  form = CommentForm()

  return render(request, 'blog/post_detail.tpl', {'post': post, 'form': form})
