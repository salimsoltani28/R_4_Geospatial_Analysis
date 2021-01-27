
ahmad<- c(1:10) 
najib<- c("a", "b", "c")

str(najib)

class(najib)

# Declare variables of different types
# Numeric
x <- 28
class(x)


# String
y<- "Kabul is a great city"

class(y)


# Boolean
A<- FALSE

class(A)


# First way to declare a variable:  use the `<-`
value<- c(1:100)
Tehran<- value

# Second way to declare a variable:  use the `=`
value= c(1:50)
Kabul=value

#print the data
print(Kabul)
Kabul

#performing arithmetic 
ahmad<- 50
mahmod<- 40

M<- mahmod-ahmad

#creating a numeric vector

BC<- c(1:1000000)

#creating a character vector
ch<- c("a", "b", "c", "ahmad")

# Boolean 
vec_bool <-  c(TRUE, FALSE, TRUE)
vec_bool

# Create the vectors

vect_1 <- c(1, 3, 5)
vect_2 <- c(2, 4, 6)
# Take the sum of A_vector and B_vector

sum_vect <- vect_1+vect_2
zarb<- vect_1*vect_2
# Print out total_vector
sum_vect
zarb


# Slice the first five rows of the vector
slice_vector <- c(50:100)
ahmad<- slice_vector[1:5]

a<- 3+4
b<- 3*4
c<- (3*4)/5
# Exponentiation
d<-2^5

# Modulo
28%%6

5%%3



# Create a vector from 1 to 10
logical_vector <- c(1:10)
logical_vector>5


# Print 5 and 6
logical_vector <- c(1:10)
logical_vector[(logical_vector>4)& (logical_vector<7)]
