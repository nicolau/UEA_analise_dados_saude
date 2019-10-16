install.packages("arules")
library(arules)

DF <- data.frame(
  idade = rnorm(100, 30, 10)
)

summary(DF)
DF$idadeFactor <- discretize(x = DF$idade, method = "fixed", breaks = c(0, 10, 30, 50), labels = c(1, 2, 3))