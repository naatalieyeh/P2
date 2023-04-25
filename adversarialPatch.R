
# # grassPictures <- list.files("/Users/natalieyeh/Desktop/P2/grass")
# # for (i in grassPictures) {
# #   testImage <- image_load(paste("/Users/natalieyeh/Desktop/P2/grass/", i, sep = ""), target_size = c(224, 224))
# #   x <- image_to_array(test_image)
# #   
# # }

install.packages("magick")
library("magick")

test_image <- image_read(paste("/Users/natalieyeh/Desktop/P2/dandelions/",i,sep=""))
test_imagePNG <- image_convert(test_image, "png")
test_imagePNG <- image_scale(test_image, "224x224!")
test_image <- test_imagePNG

patch <- image_read("/Users/natalieyeh/Desktop/P2/patch.png")
patchResize <- image_scale(patch, "22.4")
patch <- patchResize

patchedImage <- image_composite(test_image, patch, offset = "+112+112")

grassPictures <- list.files("/Users/natalieyeh/Desktop/P2/dandelions")
for (i in grassPictures) {
  test_image <- image_read(paste("/Users/natalieyeh/Desktop/P2/dandelions/",i,sep=""))
  test_imagePNG <- image_convert(test_image, "png")
  test_imagePNG <- image_scale(test_image, "224x224!")
  test_image <- test_imagePNG
  
  patch <- image_read("/Users/natalieyeh/Desktop/P2/patch.png")
  patchResize <- image_scale(patch, "22.4")
  patch <- patchResize
  
  patchedImage <- image_composite(test_image, patch, offset = "+112+112")
}
