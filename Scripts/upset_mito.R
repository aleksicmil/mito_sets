# install.packages("UpSetR")
#setwd("C:/Users/Milica/Desktop/mito_sets")

library(UpSetR)

mito <- read.csv("mito_sets/Data/mito_sets.csv", sep = ";", head = T)

upset(mito, nsets = 5, keep.order = T, order.by = "freq")
