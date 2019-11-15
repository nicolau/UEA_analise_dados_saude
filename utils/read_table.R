rm(list = ls())

my_data <- read.table(file = <FILE COMPLETE PATH>, header = T, sep = "\t")

head(my_data)

my_data_order <- my_data[order(my_data$<NOME_COLUNA>),]

my_data_subset <- my_data[, c(1, 3, 4, 7)]
