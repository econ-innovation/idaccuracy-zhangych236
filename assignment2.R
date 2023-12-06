# -*- coding: utf-8 -*-

# @Name: Assignment2.R
# @Auth: Zhang Yichuan
# @Date: 2023/12/6

##第一种代码的样本8914
setwd("C:/Users/yczha/Desktop/应用经济技术/Aminer")
list.files()

#提出目录下的所有csv文件
a = list.files(pattern = ".csv")
#读入第一个文件
merge.data = read.csv(a[1],header=T,sep=",")   
#从第二个文件开始读入
for (i in 2:n){
  assignment.data = read.csv(a[i], header=T, sep=",")
  merge.data = rbind(merge.data,assignment.data)
}

write.csv(merge.data,file = "./alldata.csv",row.names=FALSE) 


##第二种代码的样本 
# 设置工作目录
setwd("C:/Users/yczha/Desktop/应用经济技术/Aminer")

# 获取文件夹下所有csv文件的文件名
csv_files <- list.files(pattern = "\\.csv$")

# 如果文件夹中有其他类型的文件，可以使用下面的方式筛选
# csv_files <- list.files(pattern = "\\.csv$", full.names = TRUE)

# 创建一个空数据框，用于存储合并后的数据
merged_data <- data.frame()

# 循环读取每个csv文件并合并数据
for (file in csv_files) {
  # 读取csv文件
  current_data <- read.csv(file, header = TRUE)
  
  # 将数据追加到合并的数据框中
  merged_data <- rbind(merged_data, current_data)
}

# 可以选择将合并后的数据保存为新的csv文件
write.csv(merged_data, "other.csv", row.names = FALSE)


###使用lapply 代码
# 设置工作目录
setwd("C:/Users/yczha/Desktop/应用经济技术/Aminer")

# 获取文件夹下所有csv文件的文件名
csv_files <- list.files(pattern = "\\.csv$")

# 使用lapply读取所有csv文件并合并
merged_data <- do.call(rbind, lapply(csv_files, read.csv))

# 可以选择将合并后的数据保存为新的csv文件
write.csv(merged_data, "lapply.csv", row.names = FALSE)
