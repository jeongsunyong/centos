#!/usr/bin/env python
import sys
import os

#index
first=["asset","config","doc","edit","in","out","shot"]
second=["char","shader","ocio","thumbnail","concept"]

#directory
asset = ["char","shader"]
config = ["ocio","thumbnail"]
doc
edit
in
out
shot

char
shader
ocio
thumbnail
concept


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





