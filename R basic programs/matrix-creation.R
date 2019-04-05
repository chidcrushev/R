#matrix creation by three methods
#matrix()
a <- c(1:20)
result<-matrix(a, 5, 4)
print(result)
#output
#      [,1] [,2] [,3] [,4]
#[1,]    1    2    3    4
#[2,]    5    6    7    8
#[3,]    9   10   11   12
#[4,]   13   14   15   16
#[5,]   17   18   19   20


rownames =c("row1","row2","row3","row4","row5")
colnames =c("col1","col2","col3","col4")
result<-matrix(a,5,4,byrow=TRUE,dimnames=list(rownames,colnames))
print(result)
#output
#       col1 col2 col3 col4
#row1    1    2    3    4
#row2    5    6    7    8
#row3    9   10   11   12
#row4   13   14   15   16
#row5   17   18   19   20

#rbind()
b<- c(1:5)
c<- c(1:5)
result <- rbind(b,c)
print(result)
#output
#   [,1] [,2] [,3] [,4] [,5]
#b    1    2    3    4    5
#c    1    2    3    4    5

#cbind()
result  <- cbind(b,c)
print(result)
#output
#     b c
#[1,] 1 1
#[2,] 2 2
#[3,] 3 3
#[4,] 4 4
#[5,] 5 5