# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from aitutorial import models
from django.http import HttpResponse
try:
	from django.utils import simplejson as json
except:
	import simplejson as json
from markdown import markdown
# Create your views here.
#category_list = models.Category.objects.filter(set_as_top_menu=True).order_by('position_index')
def index(request):
	#category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
	rescate=[]
	try:
		category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
		for caterow in list(category):
			cate={}
			sub_cate={}
			sub_cate['cnname']=caterow['name']
			sub_content=models.AiSubcate.objects.all().filter(ai_cate_id=caterow['ai_cate_id']).values("name","enname","summary","ai_subcate_id").order_by('ai_subcate_id')
			sub_cate['content']=list(sub_content)
			cate[caterow['enname']]=sub_cate
			rescate.append(cate)
	except:
		pass
	return render(request, 'aitutorial/index.html', {'cate':rescate})
   
def aisites(request):
	#category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
	rescate=[]
	try:
		category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
		for caterow in list(category):
			cate={}
			sub_cate={}
			sub_cate['cnname']=caterow['name']
			sub_content=models.AiSubcate.objects.all().filter(ai_cate_id=caterow['ai_cate_id']).values("name","enname","summary","ai_subcate_id").order_by('ai_subcate_id')
			sub_cate['content']=list(sub_content)
			cate[caterow['enname']]=sub_cate
			rescate.append(cate)
	except:
		pass
	return render(request, 'aitutorial/aisites.html', {'cate':rescate})
   


	# categorylist=list(category)
	# context={"test":categorylist}
	#data = {"answer": rescate}
	#ensure_ascii=False用于处理中文
	#return HttpResponse(json.dumps(data, ensure_ascii=False))

def tur_article(request):
	#category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
	# rescate=[]
	# try:
	# 	category = models.AiCate.objects.all().values("name","enname","ai_cate_id").order_by('ai_cate_id')
	# 	for caterow in list(category):
	# 		cate={}
	# 		sub_cate={}
	# 		sub_cate['cnname']=caterow['name']
	# 		sub_content=models.AiSubcate.objects.all().filter(ai_cate_id=caterow['ai_cate_id']).values("name","enname").order_by('ai_subcate_id')
	# 		sub_cate['content']=list(sub_content)
	# 		cate[caterow['enname']]=sub_cate
	# 		rescate.append(cate)
	# except:
	# 	pass
	# return render(request, 'aitutorial/tur_article.html', {'cate':rescate})
	# subcate = request.GET.get('subcate')
	# page=request.GET.get('page')
	# sub_content=models.AiSubcate.objects.all().filter(enname=p2).values("ai_subcate_id")
	#subid=list(sub_content)[0]
	subcate = request.GET.get('subcate')
	page=int(request.GET.get('page'))
	articles=models.AiArticle.objects.all().filter(ai_subcate_id=subcate).order_by('page')
	subname=models.AiSubcate.objects.all().filter(ai_subcate_id=subcate).values("name")
	subcatename=list(subname)[0]['name']
	articlelists=list(articles)
	# data = {"answer": subcate}
	# return HttpResponse(json.dumps(data, ensure_ascii=False))
	cur_article=articlelists[page-1]
	prepage={}
	nextpage={}
	if page<len(articles):
		nextpage=articlelists[page]
	if page>1:
		prepage=articlelists[page-2]
	
	title_contents=articles.values("title","page","ai_subcate_id")
	context={}
	context['title_contents']=list(title_contents)
	context['cur_article']=cur_article
	context['prepage']=prepage
	context['nextpage']=nextpage
	context['subcatename']=subcatename
	#return HttpResponse("p1 = " + str(subid['ai_subcate_id']))
	return render(request, 'aitutorial/tur_article.html', context)
	#return HttpResponse(context['testm'])








