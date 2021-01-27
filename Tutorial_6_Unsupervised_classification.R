#Install packages 
install.packages("raster")
install.packages("rgdal")
install.packages("RStoolbox")
library(raster)
library(rgdal)
library(RStoolbox)


###### input raster ######
setwd("C:/Users/salim/Desktop/Data/Landsat/")
getwd()
#see the functions
#ls("package:RStoolbox")

####Index calculation
Band1<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band1.tif")
Band2<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band2.tif")
Band3<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band3.tif")
Band4<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band4.tif")
Band5<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band5.tif")
Band6<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band6.tif")
Band7<- raster("LC08_L1TP_154031_20180111_20180119_01_T1_sr_band7.tif")

#NDVI
NDVI<- (Band5-Band4)/(Band5+Band4)
NDBI<- (Band6-Band5)/(Band6+Band5)
NDWI<- (Band5-Band6)/(Band5+Band6)

writeRaster(NDWI, "NDWI.tif")
### collectively import all raster data

alldata<- list.files(pattern = ".tif",full.names = TRUE)
str(alldata)


#stack the data
datastack<- stack(alldata) 


#######import vector data in R

training<- readOGR("new_training.shp")
plot(training)

#classify the image
classification<- superClass(img = datastack, trainData = training, responseCol = "class",model = "rf",trainPartition = 0.7)

#get the info regarding classification 
print(classification)

finalclas<- classification$map
writeRaster(finalclas, "classification.tif")
