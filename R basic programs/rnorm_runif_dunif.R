#rnorm
data <- rnorm(5, mean = 2, sd = 3)
data
#output
#[1]-1.999024  3.379438  3.896916 -2.270320 -2.471663

#runif
rm(data)
data <- runif(5, min = 2, max = 10)
data
#output
#[1] 7.480125 2.962655 5.510270 5.212744 9.924250

#dunif
#Gives the probability of a continous random varaiable
rm(data)
data <- dunif(5, min = 2 , max = 11, log = FALSE)
data
#output
#[1] 0.1111111
