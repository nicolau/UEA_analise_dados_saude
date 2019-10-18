### Instalacao dos pacotes BiocManager e ggplot2
### Basta remover o simbolo de dinheiro # e executar a linha com ctrl + enter
# install.packages("BiocManager")
# BiocManager::install("ggplot2")

library(ggplot2)
mtcars
colnames(mtcars) # Visualizar as colunas da nossa matrix para seleciona aquelas que serão utilizadas no ggplot2

ggplot(data = mtcars, aes(x = factor(carb), fill = factor(carb))) +
  geom_bar() +
  ylim(c(0, 20))

DF <- data.frame(
  Patient = 1:5,
  Hemoglobina = rnorm(5, 12, 2)
)

ggplot(data = DF, aes(x = Patient, y = Hemoglobina)) +
  geom_hline(yintercept = 12, color = "red", linetype = "dashed", size = 0.8) +
  geom_bar(stat = "identity") +
  theme_bw() +
  theme(text = element_text(size = 18, color = "black", face = "bold")) +
  theme(axis.text.x = element_text(size = 18, angle = 90)) +
  annotate(geom="text", x=2, y=13, label="Threshold = 12",
           color="red") +
  coord_flip()




DF1 <- data.frame(
  Patient = "Patient1",
  Hemoglobina = rpois(100, 5)
)

DF2 <- data.frame(
  Patient = "Patient2",
  Hemoglobina = rpois(100, 1)
)

DF <- rbind(DF1, DF2)

ggplot(data = DF, aes(x = Patient, y = Hemoglobina)) +
  geom_violin() +
  geom_point(position = position_jitter(width = 0.1))




setwd("C:/Users/Andre/Desktop")

library(ggplot2)

colnames(mtcars)

pdf("scatter_plot_hp_vs_disp.pdf")
ggplot(data = mtcars, aes(x = hp, y = disp)) +
  geom_point(size=3, color="#ffb380CC") +
  theme_bw()
dev.off()


# ffb380ff
# RGB significa Red Green Blue
# 0-9 A-F


# Tipos de arquivos para salvar o grafico
# svg
# tiff
# png
# jpeg
