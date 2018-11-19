from collections import OrderedDict
from pyexcel_xls import get_data
from pyexcel_xls import save_data
import xlrd
import csv
import pandas as pd
import os
from numpy import array
import numpy as np
import pylab as pl

# 打开文件，读100行
with open('F:\GitHub\Repeat-Buyers-Prediction\Data\sample_submission.csv') as f:
    reader = csv.reader(f)
    for i,rows in enumerate(reader):
        if i <= 100:
            row = rows
            print (row)


# 首先打开文件从文件中读取数据
f=open('F:\GitHub\Repeat-Buyers-Prediction\Data\sample_submission.csv') # path存储的是我们的目标文件所在的位置

# 我们先打开目标文件然后读取出这个文件中的每一行
lines = f.readlines()

# 创建一个函数用来读取数据
def get_data(lines): # 在这里lines = f.readlines()
    sizeArry=[] # 创建一个list,用来存储数据
    for line in lines:
        line = line.replace("\n","")  # 因为读出来的数据每一行都有一个回车符，我们要删除
        line = int(line) # 将其转换为整数
        sizeArry.append(line) #转换为numpy 可以识别的数组
    return array(sizeArry)

# 首先打开文件从文件中读取数据
f=open('F:\GitHub\Repeat-Buyers-Prediction\Data\sample_submission.csv')
Lenths = get_data(f.readlines())

def draw_hist(lenths):  #lenths 接受的其实是 sizeArry传来的数组 就是def get_data(lines) 返回的数据
    data = lenths 

# 对数据进行切片，将数据按照从最小值到最大值分组，分成20组
    bins = np.linspace(min(data),max(data),40)

# 这个是调用画直方图的函数，意思是把数据按照从bins的分割来画
    pl.hist(data,bins)
#设置出横坐标
    pl.xlabel('Number of numbers')
#设置纵坐标的标题
    pl.ylabel('Number of Numeric value')
#设置整个图片的标题
    pl.title('Frequency distribution of number of csv')

# 展示出我们的图片
    pl.show()

draw_hist(Lenths)