# read in the Advertising csv file
ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

# Multiple Regression
regression <- lm(ad$Sales ~ ad$TV + ad$Radio + ad$Newspaper, data = ad)

# summary of the multiple regression
sum_reg <- summary(regression)
save(regression, sum_reg, file = "../../data/regression.RData")

# residual-plot
png("../../images/residual-plot.png")
plot(regression, caption = list("Residuals vs Fitted"), which = 1)

png("../../images/scale-location-plot.png")
plot(regression, caption = list("Scale-Location"), which = 3)

png("../../images/normal-qq-plot.png")
plot(regression, caption = list("Normal Q-Q"), which = 2)
dev.off()

