#read in the Advertising csv file
ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

#summary statistics and correlation matrix in eda-output.txt
sink("../../data/eda-output.txt")
print(summary(ad))
matrix_cor <- cor(ad)
print(cor(ad))
sink()
save(matrix_cor, file = "../../data/correlation-matrix.RData")

#historgram of Sales
png("../../images/histogram-sales.png")
hist(ad$Sales, main = "Sales", xlab = "Sales")
dev.off()

#historgram of TV
png("../../images/histogram-tv.png")
hist(ad$TV, main = "TV", xlab = "TV")
dev.off()

#historgram of Radio
png("../../images/histogram-radio.png")
hist(ad$Radio, main = "Sales", xlab = "Sales")
dev.off()

#historgram of Newspaper
png("../../images/histogram-newspaper.png")
hist(ad$Newspaper, main = "Sales", xlab = "Sales")
dev.off()

#correlation matrix
png('../../images/scatterplot-matrix.png')
plot(ad, main = "Scatter Plot Matrices of Advertisment", pch = 20, col = "#B0E2FF")
dev.off()

#Scatter plot of Sales and TV
png('../../images/scatterplot-tv-sales.png')
reg1 <- lm(ad$Sales ~ ad$TV) 
plot(ad$TV, ad$Sales, main = "Sales vs TV", xlab = "TV", ylab = "Sales")
abline(reg1, col = "#0000DD59", lwd = 2)
dev.off()

#Scatter plot of Sales and Newspaper
png('../../images/scatterplot-Newspaper-sales.png')
reg2 <- lm(ad$Sales ~ ad$Newspaper) 
plot(ad$Newspaper, ad$Sales, main = "Sales vs Newspaper", xlab = "Newspaper", ylab = "Sales")
abline(reg2, col = "#0000DD59", lwd = 2)
dev.off()

#Scatter plot of Sales and Radio
png('../../images/scatterplot-radio-sales.png')
reg3 <- lm(ad$Sales ~ ad$Radio) 
plot(ad$Radio, ad$Sales, main = "Sales vs Radio", xlab = "Radio", ylab = "Sales")
abline(reg3, col = "#0000DD59", lwd = 2)
dev.off()




