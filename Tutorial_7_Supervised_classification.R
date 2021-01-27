#Install packages 
install.packages("raster")
install.packages("rgdal")
install.packages("RStoolbox")
library(raster)
library(rgdal)
library(RStoolbox)


###### input raster ######
setwd("C:/Users/salim/Desktop/Data/classifying_satellite_imagery_in_R-master/data/")
getwd()
#see the functions
ls("package:RStoolbox")


### collectively import all raster data

alldata<- list.files(pattern = ".tif",full.names = TRUE)


#stack the data
datastack<- stack(alldata) 

unsupervised<- unsuperClass(datastack, nSamples = 10000, nClasses = 8, nStarts = 25,
                            clusterMap = TRUE)

finalclass<-unsupervised$map
writeRaster(finalclass, "unsupervisedclassification2.tif")
