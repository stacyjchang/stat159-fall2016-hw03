#Residual Sum
#The function calculate the residual sum squares of arguement
#expected input: linear regression of variables
#return output: residual_sum_squares
residual_sum_squares <- function(lm) {
  sum(residuals(lm)^2)
}

#Total Sum of Squares
#The function calculate the total sum squares of arguement
#expected input: linear regression of variables
#return output: total sum of squares
total_sum_squares <- function(lm) {
  sum(sum((predict(lm) - mean(predict(lm)))^2))
}

#R-squared
#The function calculate the r^2 of arguement
#expected input: linear regression of variables
#return output: r^2
r_squared <- function(lm) {
  summary(lm)$r.squared
}

#F-statistic
#The function calculate the f-statistics of arguement
#expected input: linear regression of variables
#return output: f-statistics
f_statistic <- function(lm) {
  f <- summary(lm)$fstatistic[1]
  attributes(f) <- NULL
  return(f)
}

#Residual Standard Error
#The function calculate the residual standard error of arguement
#expected input: linear regression of variables
#return output: residual standard error
residual_std_error <- function(lm) {
  summary(lm)$sigma
}





