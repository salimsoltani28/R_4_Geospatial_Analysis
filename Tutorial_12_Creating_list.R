

###R list 

#create an vector 

vect <- 1:5
length(vect)

#create a matrix

ourmatrix <- matrix(data = 1:150,ncol = 6, byrow = TRUE)
dim(ourmatrix)

# create a dataframe , here we will import the EU stock data
dim(EuStockMarkets)

df <- EuStockMarkets[1:10,]

######################################construct the list from existing data #######

ourlist <- list( ourmatrix, df,vect)
#index the list
outfromlist1 <- ourlist[[2]]
outfromlist <- ourlist[[2]][5,3]

#example data frame
PATH <-'https://raw.githubusercontent.com/guru99-edu/R-Programming/master/prison.csv'
df <- read.csv(PATH)[1:5]

#investigating the dataframe
head(df,6)
tail(df)

#data structure
str(df)
