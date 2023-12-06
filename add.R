# -*- coding: utf-8 -*-

# @Name: Assignment2.R
# @Auth: Zhang Yichuan
# @Date: 2023/12/6

args <- commandArgs(trailingOnly = TRUE)
file_path <- args[1]

###使用lapply 代码
# 设置工作目录
setwd("C:/Users/yczha/Desktop/应用经济技术/Aminer")

# 获取文件夹下所有csv文件的文件名
csv_files <- list.files(pattern = "\\.csv$")

# 使用lapply读取所有csv文件并合并
merged_data <- do.call(rbind, lapply(csv_files, read.csv))

# 可以选择将合并后的数据保存为新的csv文件
write.csv(merged_data, "lapply.csv", row.names = FALSE)
