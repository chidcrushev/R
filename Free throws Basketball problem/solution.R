


freeThrowAttempts <-
  rbind(
    KobeBryant_FTA,
    JoeJohnson_FTA,
    LeBronJames_FTA,
    CarmeloAnthony_FTA,
    DwightHoward_FTA,
    ChrisBosh_FTA,
    ChrisPaul_FTA,
    KevinDurant_FTA,
    DerrickRose_FTA,
    DwayneWade_FTA
  )
rownames(freeThrowAttempts) <- Players
colnames(freeThrowAttempts) <- Seasons

freeThrows <-
  rbind(
    KobeBryant_FT,
    JoeJohnson_FT,
    LeBronJames_FT,
    CarmeloAnthony_FT,
    DwightHoward_FT,
    ChrisBosh_FT,
    ChrisPaul_FT,
    KevinDurant_FT,
    DerrickRose_FT,
    DwayneWade_FT
  )
rownames(freeThrows) <- Players
colnames(freeThrows) <- Seasons

#Plot function
plot <- function(data, y_lab) {
  matplot(
    t(data),
    type = "b",
    pch = 20,
    col = c(1:10),
    lty = 2,
    ylab = y_lab,
    xlab = "Years"
  )
  legend(
    "topright",
    legend = Players,
    pch = 20,
    col = c(1:10),
    bty = 'n',
    cex = 0.5,
    inset = c(0, -0.1),
    xpd = TRUE,
    ncol = 5
  )
}

#Plot 1 for free throws attempts per game
plot(freeThrowAttempts / Games, "Free throws Attempts Per Game")

#plot 2 for accuracy of free throws
plot(freeThrows / freeThrowAttempts, "Accuracy")
