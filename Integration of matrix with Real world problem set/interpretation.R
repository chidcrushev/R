#fieldgoals averaged per game in a year
print(FieldGoals)
print(Games)
print(round(FieldGoals / Games))
#Minuted played per game in a year
print(MinutesPlayed)
print(round(MinutesPlayed / Games))

#visualization of points scored per minutes played in a game using function
plotValues <- function(data) {
  matplot(
    t(data),
    type = "b",
    pch = 20,
    col = c(1:10),
    lty = 2
  )
  legend(
    "topright",
    legend = Players,
    pch = 20,
    col = c(1:10),
    bty = 'n',
    cex = 0.5
  )
}

plotValues(Points / MinutesPlayed)
#subsetting Values
Points
Points[c(1:3), c(1:3)]
Points[1, 1]
#Output
# Points[1,1]
#[1] 2832
#The above value is a vector

#In order to retain the dimensions, set drop equals FALSE
Points[1, 1, drop = FALSE]

#Salary
plotValues(Salary)
plotValues(Salary / Games)