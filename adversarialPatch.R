# width <- 224
# height<- 224
# target_size <- c(width, height)
# rgb <- 3
# 
# install.packages("magick")
# library("magick")
# 
# patch <- image_read("/Users/natalieyeh/Desktop/P2/patch.png")
# patchResize <- image_scale(patch, "22.4")
# patch <- patchResize
# 
# # grassPictures <- list.files("/Users/natalieyeh/Desktop/P2/grass")
# # for (i in grassPictures) {
# #   testImage <- image_load(paste("/Users/natalieyeh/Desktop/P2/grass/", i, sep = ""), target_size = c(224, 224))
# #   x <- image_to_array(test_image)
# #   
# # }
# 
# 
# test_image <- image_read(paste("/Users/natalieyeh/Desktop/P2/grass",1))
# png('test.png', width = 2, height = 2, units = 'in', res = 150)
# par(mai=c(0,0,0,0))
# plot.new()
# rasterImage(test_image, 0, 0, 1, 1)
# rasterImage(img.logo,   0, 0, 1, 1)
# dev.off()

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

install.packages("magick")
library("magick")

test_image <- image_read(paste("/Users/natalieyeh/Desktop/P2/dandelions/",i,sep=""))
test_imagePNG <- image_convert(test_image, "png")
test_imagePNG <- image_scale(test_image, "224x224!")
test_image <- test_imagePNG

patch <- image_read("/Users/natalieyeh/Desktop/P2/patch.png")
patchResize <- image_scale(patch, "22.4")
patch <- patchResize

image <- c(test_image, patch)
image_composite(test_image, patch, offset = "+112+112")
