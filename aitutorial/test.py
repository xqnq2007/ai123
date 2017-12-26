# coding:utf-8
tmp=[{"machinelearning": {"content": [{"name": "线性回归", "enname": "linearregression"}, {"name": "逻辑回归", "enname": "logisticregression"}, {"name": "决策树", "enname": "decesiontree"}, {"name": "支持向量机", "enname": "svm"}, {"name": "朴素贝叶斯", "enname": "naivebayes"}, {"name": "k近邻", "enname": "knn"}, {"name": "k均值", "enname": "kmeans"}, {"name": "AdaBoost", "enname": "adaboost"}, {"name": "EM算法", "enname": "em"}, {"name": "感知机", "enname": "perceptron"}], "cnname": "机器学习"}}, {"nlp": {"content": [], "cnname": "自然语言处理"}}, {"machinevision": {"content": [], "cnname": "机器视觉"}}, {"voicerecognition": {"content": [], "cnname": "语音识别"}}, {"robot": {"content": [], "cnname": "机器人"}}, {"autodrive": {"content": [], "cnname": "无人驾驶"}}]
for w in tmp:
	print w.keys()[0]
	tmp=w.keys()[0]
	print w[tmp]['cnname']
	#w[w.keys()[0]]['cnname']
	# for k,v in w.items():
	# 	print k,v['cnname']
