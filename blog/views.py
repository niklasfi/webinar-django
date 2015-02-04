from django.shortcuts import render
from blog.models import *

# Create your views here.
def index(request):
  posts = Post.objects.all()
  return render(request, 'blog/index.tpl', {'posts': posts})

def post_detail(request, post_pk):
  post = Post.objects.get(pk=post_pk)
  return render(request, 'blog/post_detail.tpl', {'post': post})
