#!/usr/bin/env python
import sys
import os

first=["asset","config","doc","edit","in","out","shot"]
second=["asset/char","asset/shader","config/ocio","config/thumbnail","doc/concept"]
order=[first,second]
sys.argv
project_name=sys.argv[1]
os.makedirs("/project/%s" % (project_name))
for i in range(0,len(order)):
	for j in range(0,len(order[i])):
		os.makedirs("/project/%s/%s" % (project_name,order[i][j]))



