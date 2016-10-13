# load the source code of the functions to be tested

source("../functions/regression-functions.R")

# context with one test that groups expectations
context("Test for residual sum squares value") 

test_that("residual sum squares works as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)

  expect_equal(residual_sum_squares(reg), sum(residuals(reg)^2))
  expect_length(residual_sum_squares(reg), 1)
  expect_type(residual_sum_squares(reg), 'double')
})

context("Test for total sum of squares value")

test_that("total sum of squares works as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)

  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(total_sum_squares(reg), 1)
  expect_type(total_sum_squares(reg), 'double')
})

context("Test for r^2 value") 

test_that("r^2 as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)

  expect_equal(r_squared(reg), summary(reg)$r.squared)
  expect_type(r_squared(reg), "double")
})

context("Test for f-statistic")

test_that("f-statistic as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  f <- summary(reg)$fstatistic[1]
  attributes(f) <- NULL
  
  expect_equal(f_statistic(reg), f)
  expect_length(f_statistic(reg), 1)
  expect_type(f_statistic(reg), "double")
})

context("Test for RSE")

test_that("RSE as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)

  expect_equal(residual_std_error(reg), summary(reg)$sigma)
  expect_type(residual_std_error(reg), "double")
})














