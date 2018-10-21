# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-03 09:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AiArticle',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=255)),
                ('brief', models.CharField(max_length=50)),
                ('content', models.TextField()),
                ('page', models.IntegerField()),
                ('pub_date', models.DateTimeField(blank=True, null=True)),
                ('last_modify', models.DateTimeField()),
                ('is_raw', models.IntegerField()),
                ('refer_url', models.CharField(max_length=255)),
                ('refer_site', models.CharField(max_length=255)),
                ('author_name', models.CharField(max_length=50)),
                ('author_username', models.CharField(max_length=50)),
                ('ai_subcate_id', models.IntegerField()),
            ],
            options={
                'db_table': 'ai_article',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AiCate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('enname', models.CharField(max_length=30)),
                ('ai_cate_id', models.IntegerField()),
            ],
            options={
                'db_table': 'ai_cate',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AiSubcate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('enname', models.CharField(max_length=30)),
                ('ai_subcate_id', models.IntegerField()),
                ('ai_cate_id', models.IntegerField()),
            ],
            options={
                'db_table': 'ai_subcate',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AiUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('reg_date', models.DateTimeField(blank=True, null=True)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('name', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=254)),
                ('phone', models.IntegerField()),
                ('qq', models.IntegerField()),
                ('weixin', models.CharField(max_length=30)),
                ('username', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'ai_user',
                'managed': False,
            },
        ),
    ]
