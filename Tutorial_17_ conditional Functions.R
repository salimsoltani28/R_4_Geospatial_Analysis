
#conditional fuctions
#load the data

dt <- airquality

#see how many rows your data has
c <- c(1:100)
length(c)

#see the diminsion of a dataframe
dim(dt)
nrow(dt)

#define length variable 
length1 <- nrow(dt)

#We multiply the length by 0.8. It will return the number of rows to select. It should be 153*0.8 = 122.4
tamamrow <- length1*0.8
spliter <- c(1:tamamrow)

#index the vector
adad <- spliter[1:8]

#split the data for training
trainingdf <- dt[spliter,]

#We can create the test dataset by using the remaining rows, 123:153. This is done by using ??? in front of split.
testdf <- dt[-spliter,]

head(testdf)


#define the function
#We can create the condition inside the body of the function. Remember, we have an argument train that is a Boolean set to TRUE by default to return the train set. To create the condition, we use the if syntax:
splitter <- function(data1, train=TRUE){
  length1 <- nrow(data1)
  total_row <- length1*0.8
  spliter <- 1:total_row
  
  #put condition here
  if(train==TRUE){
    train_df <- data1[spliter,]
    return(train_df)
  }else{
    test_df <- data1[-spliter,]
    return(test_df)
  }
}


#apply the function
airquality <- airquality

#split your data
train2 <- splitter(airquality,train = TRUE)
dim(train2)

#split your data for test
testdat <- splitter(airquality,train = FALSE)
dim(testdat)


