width <- 224
height<- 224
target_size <- c(width, height)
rgb <- 3 #color channels

res=c("","")
grassUnmodified=list.files("/Users/natalieyeh/Desktop/P2\ Model\ Setup/grass")
for (i in grassUnmodified){
  test_image <- image_load(paste("/Users/natalieyeh/Desktop/P2\ Model\ Setup/grass/",i,sep=""),
                           target_size = target_size)
  x <- image_to_array(test_image)
  x <- array_reshape(x, c(1, dim(x)))
  x <- x/255
  pred <- model %>% predict(x)
  if(pred[1,1]<0.50){
    print(i)
  }
}

install.package("magick")
