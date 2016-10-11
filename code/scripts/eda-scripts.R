#read in the Advertising csv file
ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

#summary statistics
summary(ad$Sales)
summary(ad$TV)
summary(ad$Radio)
summary(ad$Newspaper)

#historgram of TV and Sales
png("../images/histogram-sales.png")
hist(ad$Sales, main = "Sales", xlab = "Sales")

png("../images/histogram-tv.png")
hist(ad$TV, main = "TV", xlab = "TV")

png("../images/histogram-radio.png")
hist(ad$Radio, main = "Sales", xlab = "Sales")

png("../images/histogram-newspaper.png")
hist(ad$Newspaper, main = "Sales", xlab = "Sales")

#correlation matrix
matrix_cor <- cor(ad)
pairs(matrix_cor, main = "Scatter Plot Matrices of Advertisment", pch = 20, col = "#B0E2FF")
