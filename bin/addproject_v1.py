#!/usr/bin/env python
import sys
import os

#index
first=["asset","config","doc","edit","in","out","shot"]
second=["char","shader","ocio","thumbnail","concept"]

#directory
#1
asset = ["char","shader"]
config = ["ocio","thumbnail"]
doc = []
edit = []
in = []
out = []
shot = []
#2
char = []
shader = []
ocio = []
thumbnail = []
concept = []


order=[first,second]
# "Z:"+ self.sumpath().replace("/","\\")i
sys.argv
project_name=sys.argv[1]
#os.makedirs("/project/%s" % (project_name))
print "/project/%s" % (project_name)
for i in range(0,len(order)):
	for j in range(0,len(order[i])):
		#os.makedirs("/project/%s/%s" % (project_name,first)
		print "/project/%s/%s" % (project_name,order[i][j])



"""
 폴더별로 나누는것 -> 검색 가능하니깐 별로 중요하지 않음
 간단하게 짜기
"""
