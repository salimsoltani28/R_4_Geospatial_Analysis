
library(raster)
#for loop 


# Create fruit vector
fruit <- c('Apple', 'Orange', 'Passion fruit', 'Banana')

for(i in fruit){
  print(i)
}


### storing the for result in a list

#vector list
listadad <- c(1:10000)

result <- list()

for(i in listadad){
  result[i] <- i*i
}


####################### Remote sensing example
path <- "C:/Users/salim/Desktop/Data/classifying_satellite_imagery_in_R-master/data/"
listpath <- list.files(path = path, pattern = "tif",full.names = TRUE)
imgall <- stack(listpath)
allimage <- list()

for(t in 1:length(listpath) ){
  img <- raster(listpath[t])
  allimage[t] <- img
}
