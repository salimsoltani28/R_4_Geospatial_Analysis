
#import raster package 
library(raster)
library(rgdal)

#get the package functions 
ls("package:raster")

#import a raster file 

land8data <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band1.tif")
par(mfrow=c(1,1))
plot(land8data)

#sample data
set.seed(2020)

## Create the data
x = rnorm(1000)
ts <- cumsum(x)
## Stationary the serie
diff_ts <- diff(ts)
par(mfrow=c(1,2))
## Plot the series
plot(ts, type='l')
plot(diff(ts), type='l')


################################

#import example data
df <- cars

#see the number of rows
nrow(df)

length(df[,1])

#implement some of math functions
abs(10)
abs(-10)

#get log of a number
log(100,base = 10)

exp(100)

#?????? ???? ?????? ???? ????????????
sqrt(9)

#factorial 5! =1*2*3*4*5
factorial(5)

x <- c(1,2,3,4)

var2 <- median(x)
# construct a function


moraba <- function(n){
  #compute the square of integer "n"
  n^2 *3
}

moraba(2)

####### environment check 
ls(environment())

# write new function to test the local vs golbal environment 

funjadid <- function(m){
  y <- 4
  sqrt(m)+y
}

funjadid(9)
y

#construct a remote sensing based function 

band1 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band1.tif")
band2 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band2.tif")
band3 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band3.tif")
band4 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band4.tif")
band5 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band5.tif")
band6 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band6.tif")
band7 <- raster("C:/Users/salim/Desktop/Function/LC08_L1TP_154031_20180111_20180119_01_T1_sr_band7.tif")

alldata <- stack(band1,band2,band3,band4,band5,band6,band7)

#define the ndvi function 
ndvifunc <- function(data){
  data1 <- data[[5]]
  data2 <- data[[4]]
  ndvi <- (data1-data2)/(data1-data2)
}

 #apply the ndvi function

ndvi <- ndvifunc(alldata)

plot(ndvi)
  