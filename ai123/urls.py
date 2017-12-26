"""ai123 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
import django
from django.conf.urls import url,include
from django.contrib import admin
from django.conf.urls.static import static  
from django.views.static import serve
from bbs import views
import os
import settings
from uploads import *
media_root = os.path.join(settings.BASE_DIR,'media')
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^simditor/', include('simditor.urls')),   # add this line
    url(r'^aiindex/',include('aiindex.urls')),
    url(r'^bbs/', include('bbs.urls'),),
    url(r'^login/', views.account_login, name='login'),
    url(r'^logout/', views.account_logout, name='logout'),
    url(r'^', include('aitutorial.urls'),),
    url(r'^markdownx/', include('markdownx.urls')),
    url(r'^media/(?P<path>.*)',django.views.static.serve,  {'document_root': 'media'}),
    url(r'^tinymce/', include('tinymce.urls')),
    #url(r'^admin/upload/(?P<dir_name>[^/]+)$', upload_image, name='upload_image'),
    url(r'^admin/upload/(?P<dir_name>[^/]+)$', upload_image, name='upload_image'),
    url(r"^uploads/(?P<path>.*)$", serve, {"document_root": settings.MEDIA_ROOT, }),
]

