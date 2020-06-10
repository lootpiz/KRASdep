source("../R/KRASdep.R")
library(testthat)

context("Checking KRASdep functions.")

test_that("Invalid imput", {
    mat <- matrix(NA, ncol = 3, nrow = 3)
    expect_error(transExp(mat), 
        "Please provide raw TPM values in matrix.")

    mat <- matrix(runif(3, min=0, max=100), ncol = 3, nrow = 1)
    expect_error(transExp(mat), 
        "Please provide raw TPM values in matrix.")
})
