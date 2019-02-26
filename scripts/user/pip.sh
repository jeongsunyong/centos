:#!/bin/sh

#pip install --user pymediainfo #error

#pyside2 (for gui)
pip install --user PySide2

#numpy,Cython
pip install --user numpy
pip install --user Cython

#Excel Parser
pip install --user openpyxl
pip install --user --upgrade lxml
pip install --user xlsxwriter
pip install --user xlrd
pip install --user xlwt
pip install --user xlutils
pip install --user pillow 

#for parsing edl file
pip install --user timecode
pip install --user edl

#OTIO
pip install --user opentimelineio

#for Database
pip install --user redis
pip install --user pymongo
pip install --user psycopg2
pip install --user psycopg2-binary
