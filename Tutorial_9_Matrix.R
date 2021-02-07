
malomat<- c(1:100) 

#how to create a matrix

malomat2<- matrix(data = 1:10,nrow = 5, byrow = TRUE)

#how to access the matrix dimension 

dim(malomat2)


#construct the same matrix with byrow =false
malomat3<- matrix(data = 1:10, nrow = 5, byrow = FALSE)

#construct a matrix with specifying column only

malomat4<- matrix(data = 1:12, ncol = 3, byrow = TRUE)
dim(malomat4)

#adding a column to our matrix 
malomat5<-cbind(malomat2, c(5:9))
malomat5

malomat6<- rbind(malomat5, c(1:3))
dim(malomat5)

#combinding two matrixes 
malomat10<- matrix(data = 1:12, ncol = 3, byrow = TRUE)
malomat11<- matrix(data = 12:23, ncol = 3, byrow = TRUE)

#column merging
malomat12<-  cbind(malomat10, malomat11)

#row merging
malomat13<- rbind(malomat10, malomat11)

#data indexing ,accessing the data from matrix 

malomat14<- malomat13[8,2]
class(malomat14)

malomat15<- malomat13[4:5,2:3]

#select only one column and one row

#select the value of column 2
malomat16<- malomat13[,2]

#select the value of row #6
malomat17<- malomat13[6,]

##merge the data 
tehran<- malomat13[,3]
kabul<- malomat13[,2]

kabul_tehran<- cbind(tehran,kabul)
