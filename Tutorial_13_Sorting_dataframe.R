
library(dplyr)

#random value
set.seed(1234)

#create dataset

data_frame <- tibble(  
  c1 = rnorm(50, 5, 1.5),   
  c2 = rnorm(50, 5, 1.5),  
  c3 = rnorm(50, 5, 1.5),
  c4 = rnorm(50, 5, 1.5), 	
  c5 = rnorm(50, 5, 1.5)
)


#order the datafram
df <- data_frame[order(data_frame$c1),]

#order more than one column
df1 <- data_frame[order(data_frame$c2,data_frame$c4),]
df2 <-data_frame[order(data_frame$c3, data_frame$c4),]

#sort by ascending and descending
df3 <-data_frame[order(-data_frame$c3, data_frame$c4),]

sort(data_frame$c1,decreasing = FALSE)
