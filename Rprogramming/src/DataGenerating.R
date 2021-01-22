# generate simulated data
n <- 200

x1 <- rnorm(n) + 5
x2 <- runif(n) + 10
x3 <- rnorm(n)*2 + 3
noises <- rnorm(n)
y <- 0.1*x1 + 0.5*x2 + x3 + noises

df <- data.frame(x1, x2, x3, y)

write.csv(df, file.path("../data", "SimulatedData.csv"), row.names=F)


