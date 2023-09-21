## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(nmfbin)

# Create a binary matrix for demonstration
X <- matrix(sample(c(0, 1), 100, replace = TRUE), ncol = 10)

# Perform Logistic NMF
results <- nmfbin(X, k = 3, optimizer = "mur", init = "nndsvd", loss_fun = "logloss", max_iter = 500)

## ----finalloss----------------------------------------------------------------
print(results$convergence[length(results$convergence)])

## ----convergence--------------------------------------------------------------
plot(results$convergence,
     xlab = "Iteration",
     ylab = "Negative log-likelihood loss")

