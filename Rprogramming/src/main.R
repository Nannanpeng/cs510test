library(testthat)
library(profvis) # profile algorithm
library(microbenchmark)
library(ggplot2) #only dataframe
library(reshape2)
library(viridis) # color bg

df <- read.csv("../data/SimulatedData.csv")

# check x1-y relationship
p1 <- ggplot(data=df, aes(x=x1,y=y)) + geom_point() + 
        labs(title="Regression analysis", x="Independent var.", y="Dependent var.")
pdf("../results/xy_relationship.pdf", height = 6, width=6)
p1
dev.off()

# linear regression without intercept
reg <- lm(y~.-1, data=df,)
summary(reg)

# check residuals and output as eps
par(mfrow=c(2, 2))

setEPS()
plot(reg)
postscript("../results/ResultsDiagnosis.eps")
dev.off()

par(mfrow=c(1,1))
