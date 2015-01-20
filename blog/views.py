from django.shortcuts import render
from blog.models import *

# Create your views here.
def index(request):
  posts = Post.objects.all()
  return render(request, 'blog/index.tpl', {'posts': posts})
