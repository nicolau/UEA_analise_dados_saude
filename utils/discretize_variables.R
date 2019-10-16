# install.packages("arules")
library(arules)

DF <- data.frame(
  idade = as.integer(rnorm(100, 30, 10))
)

summary(DF)

discretize(x = DF$idade)

DF$faixa <- discretize(x = DF$idade,
                       method = "fixed",
                       breaks = c(0, 18, 40, 60, 120))

DF$cat <- discretize(x = DF$idade,
                     method = "fixed",
                     breaks = c(0, 18, 40, 60, 120),
                     labels = c("crianca", "adulto", "experiente", "imortal"))

