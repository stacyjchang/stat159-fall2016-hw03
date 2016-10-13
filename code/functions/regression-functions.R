#Residual Sum
#The function calculate the residual sum squares of arguement
#expected input: linear regression of variables
#return output: residual_sum_squares
residual_sum_squares <- function(lm) {
  return(sum(residuals(lm)^2))
}

#Total Sum of Squares
#The function calculate the total sum squares of arguement
#expected input: linear regression of variables
#return output: total sum of squares
total_sum_squares <- function(lm) {
  return(sum((unlist(lm$model[1]) - mean(unlist(lm$model[1])))^2))
}

#R-squared
#The function calculate the r^2 of arguement
#expected input: linear regression of variables
#return output: r^2
r_squared <- function(lm) {
  return(1 - (residual_sum_squares(lm)/total_sum_squares(lm)))
}

#F-statistic
#The function calculate the f-statistics of arguement
#expected input: linear regression of variables
#return output: f-statistics
f_statistic <- function(lm) {
  p <- length(coefficients(lm)) - 1
  n <- length(residuals(lm))
  fnum <- (total_sum_squares(lm) - residual_sum_squares(lm)) / p
  fdem <- residual_sum_squares(lm) / (n - p - 1)
  return(fnum / fdem)
}

#Residual Standard Error
#The function calculate the residual standard error of arguement
#expected input: linear regression of variables
#return output: residual standard error
residual_std_error <- function(lm) {
  p <- length(coefficients(lm)) - 1
  n <- length(residuals(lm))
  rse <- sqrt(residual_sum_squares(lm) / (n - p - 1))
  return(rse)
}





