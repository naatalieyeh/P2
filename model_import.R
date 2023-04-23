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
setwd("/Users/natalieyeh/Desktop/P2\ Model\ Setup")
model <- load_model_tf("./dandelion_model")

# second try hi commit

width <- 224
height<- 224
target_size <- c(width, height)
rgb <- 3 #color channels

test_image <- image_load(paste("/Users/natalieyeh/Desktop/P2\ Model\ Setup//",i,sep=""),
                         target_size = target_size)
x <- image_to_array(test_image)
x <- array_reshape(x, c(1, dim(x)))
x <- x/255
pred <- model %>% predict(x)
print(pred)


res=c("","")
dandelionsUnmodified=list.files("/Users/natalieyeh/Desktop/P2\ Model\ Setup/dandelions")
for (i in dandelionsUnmodified){
  test_image <- image_load(paste("/Users/natalieyeh/Desktop/P2\ Model\ Setup/dandelions/",i,sep=""),
                           target_size = target_size)
  x <- image_to_array(test_image)
  x <- array_reshape(x, c(1, dim(x)))
  x <- x/255
  pred <- model %>% predict(x)
  if(pred[1,2]<0.50){
    print(i)
  }
}

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
