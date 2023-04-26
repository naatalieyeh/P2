install.packages("magick")
library("magick")

dandelions <- list.files("/Users/natalieyeh/Desktop/P2/dandelions")
dandelionsPatched <- c()

for (i in dandelions) {
  testImage <- image_read(paste("/Users/natalieyeh/Desktop/P2/dandelions/",i,sep=""))
  testImagePNG <- image_convert(testImage, "png")
  testImagePNG <- image_scale(testImage, "224x224!")
  testImage <- testImagePNG
  
  patch <- image_read("/Users/natalieyeh/Desktop/P2/patch.png")
  patchResize <- image_scale(patch, "22.4")
  patch <- patchResize
  
  patchedImage <- image_composite(test_image, patch, offset = "+112+112")
  patchedImageJPG <- image_convert(patchedImage, "jpg")
  patchedImage <- patchedImageJPG
  dandelionsPatched <- c(dandelionsPatched, patchedImage)
}



