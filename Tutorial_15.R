
#Merging dataframes

producers <- data.frame(   
  surname =  c("Spielberg","Scorsese","Hitchcock","Tarantino","Polanski"),    
  nationality = c("US","US","UK","US","Poland"),    
  stringsAsFactors=FALSE)

# Create destination dataframe
movies <- data.frame(    
  surname = c("Spielberg",
              "Scorsese",
              "Hitchcock",
              "Hitchcock",
              "Spielberg",
              "Tarantino",
              "Polanski"),    
  title = c("Super 8",
            "Taxi Driver",
            "Psycho",
            "North by Northwest",
            "Catch Me If You Can",
            "Reservoir Dogs","Chinatown"),                
  stringsAsFactors=FALSE)

datamerge <- merge(producers,movies,by = "surname")

#change the column name of one dataset
colnames(movies)[colnames(movies)=="surname"] <- "name"
colnames(movies)

#merge the data with different column name
twodatamerge <-  merge(producers, movies, by.x = "surname", by.y = "name")

#check if the data is identical 
identical(twodatamerge,datamerge)

###partial match
# Create a new producer
add_producer <-  c('Lucas', 'US')

##  Append it to the ` producer` dataframe
producers <- rbind(producers,add_producer)
m3 <- merge(producers, movies, by.x = "surname", by.y = "name", all.x = TRUE)

