install.packages("tidyverse")
install.packages("keras")
install.packages("tensorflow")
install.packages("reticulate")
library("tidyverse")
library("keras")
library("tensorflow")
library("reticulate")
install_tensorflow(extra_packages = "pillow")
install_keras()
setwd("/Users/natalieyeh/Desktop/P2")
model <- load_model_tf("./dandelion_model")

# second try hi commit