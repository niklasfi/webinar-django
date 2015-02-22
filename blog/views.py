from django.shortcuts import render
from django.template import RequestContext
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

  if request.method == 'POST':
    form = CommentForm(request.POST)

    if form.is_valid():
      #process form
      Comment.objects.create(
          post=post,
          nick=form.cleaned_data['nick'],
          body=form.cleaned_data['body']
      )
    else:
      #form is invalid, output blank one
      form = CommentForm()
  else:
    form = CommentForm()

  return render(request, 'blog/post_detail.tpl', {'post': post, 'form': form}, context_instance=RequestContext(request))
