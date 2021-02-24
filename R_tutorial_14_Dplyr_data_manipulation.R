
install.packages("dplyr")
library(dplyr)

#create dataset
df_primary <- tribble(
  ~ID, ~y,
  "A", 5,
  "B", 5,
  "C", 8,
  "D", 0,
  "F", 9)

df_secondary <- tribble(
  ~ID, ~y,
  "A", 30,
  "B", 21,
  "C", 22,
  "D", 25,
  "E", 29)

###Left join
newdata <- left_join(df_primary,df_secondary,by="ID")


#right join
secondata <- right_join(df_primary,df_secondary,by="ID")

#inner join
thirddata <- inner_join( df_primary,df_secondary,by="ID")

#full join
Ftdata <- full_join(df_primary,df_secondary,by="ID")

###########create new dataset
df_primary <- tribble(
  ~ID, ~year, ~items,
  "A", 2015,3,
  "A", 2016,7,
  "A", 2017,6,
  "B", 2015,4,
  "B", 2016,8,
  "B", 2017,7,
  "C", 2015,4,
  "C", 2016,6,
  "C", 2017,6)
df_secondary <- tribble(
  ~ID, ~year, ~prices,
  "A", 2015,9,
  "A", 2016,8,
  "A", 2017,12,
  "B", 2015,13,
  "B", 2016,14,
  "B", 2017,6,
  "C", 2015,15,
  "C", 2016,15,
  "C", 2017,13)


#join the data based on two columns
joindata <- left_join(df_primary,df_secondary, by=c("ID","year"))


##########clean the data
library(tidyr)
# Create a messy dataset
messy <- data.frame(
  country = c("A", "B", "C"),
  q1_2017 = c(0.03, 0.05, 0.01),
  q2_2017 = c(0.05, 0.07, 0.02),
  q3_2017 = c(0.04, 0.05, 0.01),
  q4_2017 = c(0.03, 0.02, 0.04))

#reshape the data

newname <- messy %>% gather(quarter, growht, q1_2017:q4_2017)

secondata <- newname %>% spread(quarter, growht)

#divide value of one column into two 
dividdata <- newname %>% separate(quarter ,c("QRT","year"), sep = "_")

#unite back the data
unitdata <- dividdata %>% unite(quarter, QRT,year, sep = "_")
