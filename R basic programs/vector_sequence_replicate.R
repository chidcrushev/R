#vector and its opeartions
#x is a double data type
#c indicates "combine"
x <- c(12,33,44,55)
x
typeof(x) # returns double
is.integer(x) #returns FALSE
is.double(x)  #returns TRUE

#7 will be recognised as character
y <- c("A","B","C",7)
is.character(y) #returns true

z <- c(1L,2,3,4L)
typeof(z) #returns double

#sequence-similar to  ":" but provides more flexibilty
a <- seq(1,15,4)
a
#prints "1 5 9 13"

#replicate
b <- rep(1,10)
b
#prints "1" 10 times 


#using brackets
d <- c("A","B","C","D","E")
d[-1] #prints "B" "C" "D" "E"
d[c(1:3)] #prints "A" "B" "C"


a1 <- 100
b1 <-rnorm(a1)
c1 <-rnorm(a1)

#vectorized approach
d1 <- b1*c1
d1

#de-vectorized approach
d2 <- rep(NA,a1)
for(i in 1:a1)
{
  d2[i] = b1[i]*c1[i] 
}
d2

