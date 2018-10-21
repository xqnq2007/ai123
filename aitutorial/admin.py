# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from models import AiArticle
# Register your models here.

#admin.site.register(AiArticle)
class AiArticleAdmin(admin.ModelAdmin):
	list_display = ('title','pub_date','last_modify',)
	
admin.site.register(AiArticle,AiArticleAdmin)