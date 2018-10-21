#!/usr/bin/env python
# encoding:utf8

from django.conf.urls import url
from aitutorial import views


urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^tur_article/$', views.tur_article, name='tur_article'),
    url(r'^aisites/$', views.aisites, name='aisites'),
    # url(r'^category/(\d+)/$', views.category, name='category'),
    # url(r'^detail/(\d+)/$', views.article_detail, name='article_detail'),
    # url(r'^comment/$', views.comment, name='post_comment'),
    # url(r'^comment_list/(\d+)/$', views.get_comments, name='get_comments'),
    # url(r'^publish_article/', views.publish, name="publish"),
]