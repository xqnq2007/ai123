# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from markdownx.models import MarkdownxField
from tinymce.models import HTMLField
from simditor.fields import RichTextField
import django.utils.timezone as timezone

# Create your models here.

class AiArticle(models.Model):
    id = models.IntegerField(primary_key=True)
    title = models.CharField(max_length=255)
    brief = models.CharField(max_length=50)
    #content = MarkdownxField()#models.TextField()
    #content = models.TextField()
    #content = HTMLField()
    content = RichTextField()
    page = models.IntegerField(default=1)
    pub_date = models.DateTimeField(blank=True, null=True,default=timezone.now)
    last_modify = models.DateTimeField(auto_now=True)
    is_raw = models.IntegerField(default=1)
    refer_url = models.CharField(max_length=255,default=0)
    #refer_site = models.CharField(max_length=255,default=0)
    author_name = models.CharField(max_length=50,default='wang')
    author_username = models.CharField(max_length=50,default='admin')
    ai_subcate_id = models.IntegerField(default=1001)

    class Meta:
        managed = False
        db_table = 'ai_article'
    def __unicode__(self):
        return self.title

class AiCate(models.Model):
    name = models.CharField(unique=True, max_length=20)
    enname = models.CharField(max_length=30)
    ai_cate_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ai_cate'


class AiSubcate(models.Model):
    name = models.CharField(unique=True, max_length=20)
    enname = models.CharField(max_length=30)
    summary = models.TextField(verbose_name=u'教程简介')
    ai_subcate_id = models.IntegerField()
    ai_cate_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ai_subcate'

class AiUser(models.Model):
    password = models.CharField(max_length=128)
    reg_date = models.DateTimeField(blank=True, null=True)
    last_login = models.DateTimeField(blank=True, null=True)
    name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    phone = models.IntegerField()
    qq = models.IntegerField()
    weixin = models.CharField(max_length=30)
    username = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'ai_user'
    
