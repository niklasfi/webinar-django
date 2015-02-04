from django.conf.urls import patterns, url

from blog import views

urlpatterns = patterns('',
    url(r'^$', views.index),
    url(r'^post/(?P<post_pk>\d+)$', views.post_detail),
)
