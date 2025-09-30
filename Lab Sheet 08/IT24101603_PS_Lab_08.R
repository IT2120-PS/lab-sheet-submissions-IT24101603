setwd("C:\\Users\\teran\\OneDrive\\Desktop\\IT24101603")

data <- read.table("Exercise - LaptopsWeights.txt", sep=",", header=TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)
popmn

popvar <- var(Weight.kg.)
popvar

samples <- c()
n <- c()

for(i in 1:25)
{
  s <- sample(Weight.kg.,6,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

colnames(samples) = n

s.means <- apply(samples,2,mean)
s.means

s.vars <- apply(samples,2,var)
s.vars

samplemean <- mean(s.means)
samplemean

samplevars <- var(s.means)
samplevars


popmn
samplemean

truevar = popvar/6
truevar
samplevars



