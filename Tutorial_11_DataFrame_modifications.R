
matrixb <- matrix(data = 5, nrow = 3,ncol = 3)
#create a dataframe

a <- c(10,20,30,40)
b <- c('ahmad','mahmod','ali','joma')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8,9,10)

#join the vectors to make a dataframe
ourdata <- data.frame(a,b,c,d)

#change column names
names(ourdata) <- c('ID','Kabul','Tehran','Herat')
print(ourdata)

#change the name of one column
names(ourdata) <-c('ID','Bamyan','Tehran','Herat')
print(ourdata)

#slice your dataframe
ourdata[4,4]

#only one row
ourdata[4,]

#only one column
newdata <- ourdata[,3]

#slice a range of rows and columns

newdata2 <- ourdata[3:4,3:4]

#slicing with column name
olddata <- ourdata[,'Bamyan']

##############Append data

shahr <- c('kunduz','Mashhad','Jawzjan','Samangan')

ourdata
ourdata$shahr <- shahr
ourdata$newdata <- newdata

########selecting a coumn of dataframe
ourdata$Tehran
givethename <- ourdata$Tehran

#conditional subset

data3 <- subset(ourdata,ID>20)
