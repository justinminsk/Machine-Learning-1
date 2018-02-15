babies <-read.csv("http://math.mercyhurst.edu/~sousley/STAT_139/data/babies.csv", header=T)
# data on babies with 999's as NAs

plot(babies$gestdays)
# scatter plot of gestration days

hist(babies$gestdays)
# histogram plot of ''

plot(density(babies$gestdays), main= "Density of birth weight")
# smooth histogram of ''

boxplot(babies$gestdays)
# boxplot of ''

UGsbyState<-read.csv("http://math.mercyhurst.edu/~sousley/STAT_139/data/UGsbyState.csv", header = T)
# second set of data on undergrads

boxplot(UGsbyState$UGs)
# boxplot of UGS

hist(UGsbyState$UGs)
# histogram of UGs

boxplot(UGsbyState$UGpT)
# boxplot of UGs by the thousand

hist(UGsbyState$UGpT)
# histogram by the thousand 

attach(faithful)
hist(waiting)
# generic, defaults

hist(waiting,main = 'truncated x range', xlab= 'seconds', ylab= 'count', xlim= c(60,90))
# truncated histogram 

hist(waiting, main = 'Histogram with cex= 1.5', cex.axis= 1.5 )
# cexmagnifies the text size, 1 = 100%, 1.5 = 150% of normal size

plot(babies$med)
# scatter plot of education codes

hist(babies$med)
# bad for this type of catagorical data

barplot(babies$med)
# better for this type of data

bcounts<-table(babies$med)
barplot(bcounts)
# need counts to make the bar plot work

pie(bcounts, main = "Mother's education")
# pie chart still has problems

boxplot(babies[which(babies$gestday < 999), 'gestdays'])
# box plot taking out values less than 999

BST <-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/BST.vec")
exec.pay<-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/exec.pay.vec")
galton<-read.csv("http://math.mercyhurst.edu/~sousley/STAT_139/data/galton.csv")
# data for 2/1

library(e1071)
# library for skewness 

e1071::skewness(exec.pay)
# shows the skewness, in this case with a right skewed data it has a high skewness but skew can also be neg
# 0 is base

MacFingL <-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/MacFingL.vec")
# bring in a standard dist data

e1071::skewness(MacFingL)
# low skewness closer to std dist

e1071::kurtosis(galton$parent)
# shows kurtosis or if leptokurtotic or high kurtosis or if it has platykurtotic or low (neg) kurtosis
# this one has a kurtosis closer to 0 so it is more gol kurtosis and its skewness is close to 0

e1071::kurtosis(exec.pay)
# this data has a high skew and a high kurtosis

p <-c(0.5,0.5)
# make a talbe with each prob being one half or a fair coin toss

sample(0:1, size=1, prob=p)
# see the outcome of one coin toss

cointoss <- sample(0:1, size=100, prob=p, replace = TRUE)
# see the results of 100 coin tosses

mean(cointoss)
# gives you the prob of getting 1 or heads

table(cointoss)
# see the numbers between tails and heads for 100 coin tosses

cointoss<-sample(c("tails","heads"), size=100, prob=p, replace = T)
# can also you strings (cannot use mean then), string is a seprate varible to prob however

p <-c(0.25,0.50,0.25)
# flipping two coins (0 heads, 1 heads, 2 heads)

mean(sample(0:2, size=100, prob=p, replace = TRUE))
# a third way to create a sample and look at the mean

res <- c()
for(i in c(1:100)){ res[i] <-mean(sample(c(0:1), size=39, prob=c(0.59,0.41), replace = T)) }
# get the prob on a 59:41 split deck with 39 cards

hist(res)
# graph the mean outcomes

barplot(table(sample(1:6, size=100, replace = T) + sample(1:6, size=100, replace = T)))
# you can + two samples to for example roll two dice at once, or etc


n <-2
curve(dnorm(x, mean=0, sd=1), -3, 3, lwd=2, xlab="x", ylab="Densities of sample mean", ylim= c(0,2), main = 'Sampling Distribution by sample size: black = 1 (SE); red = 5; blue = 25; ')
n <- 5
curve(dnorm(x, mean=0, sd=1/sqrt(n)), -1.5, 1.5, lw= 2, col="red", add=T)
n <-25
curve(dnorm(x, mean=0, sd=1/sqrt(n), ), -0.8, 0.8, add=TRUE, lwd= 2, col="blue" )
# creates a graph wich simulates the Central Limit Therom

rnorm(1000, 0, 1)
# creates random smaple with normal dist.

res <-rnorm(50000, 5, 1.5)
# get an rnorm of 50
par(fig=c(0,1,0,0.6))
boxplot(res,horizontal=TRUE, bty="n", xlab='')
# create a box plot at fig=c(0,1,0,0.6)
par(fig=c(0,1,0.3,.95), new=TRUE)
hist(res, prob=TRUE, main="Normal sample of 50", col=gray(.9), xlab= '')
# add a hist at fig=c(0,1,0.3,.95)
lines(density(res),lty=2)
# add a doted line for the dist
curve(dnorm(x, 5, 1.5), lwd=2, add=TRUE)
# add a curve of the dist
rug(res)
# add a rug for count
par(fig=c(0,1,0,1)) 
# reset plot dimensions

# runif(#, min, max)
# creates uniform dist

library(e1071)
# load library for skewness
res <-runif(50, min=0, max=10)
# creates uniform dist
par(fig=c(0,1,0,0.6))
boxplot(res,horizontal=TRUE, bty="n", xlab='')
par(fig=c(0,1,.30,0.95), new=TRUE)
hist(res,prob=TRUE,main="Uniform sample of 50",xlab = '',col=gray(.9))
lines(density(res),lty=2)
curve(dunif(x, min=0, max=10), lwd=2, add=TRUE)
rug(res)
mean(res)
sd(res)
skewness(res) # mean should be near 5
# low skewness because it is a sample of uniform dist

# paste('', '') 
#pastes together strings

res <-0
#initialize res , sometimes needed
for (i in c(1:100) )
{
  res[i] = mean(runif(50, 0, 10)) 
  }
par(fig=c(0,1,0,0.6))
boxplot(res,horizontal=TRUE, bty="n", xlab='')
par(fig=c(0,1,.30,0.95), new=TRUE)
hist(res, prob=TRUE, main="Mean of repeated uniform samples", col='pink', xlab= '') 
lines(density(res),lty=2)
curve(dunif(x, min=0, max=10), lwd=2, add=TRUE)
rug(res)
par(fig=c(0,1,0,1))
# reset plot dimensions
mean(res); sd(res); skewness(res); 
# can use ; to do more than one function per a line
res <-0
# reset


res = rlnorm(50, 0, 1)
# lognormal distribution;
# rlnorm() function, skewed right
par(fig=c(0,1,0,0.6))
boxplot(res,horizontal=TRUE, bty="n", xlab= 'res')
par(fig=c(0,1,.30,0.95), new=TRUE)
hist(res, prob=TRUE, main="lognormal distribution (skewed right)", col=gray(.9), xlab= '')
lines(density(res),lty=2)
rug(res)
mean(res); sd(res); skewness(res); 
par(fig=c(0,1,0,1))
# reset plot dimensions;


for (i in c(1:100)) 
  {
  res[i] = mean(rlnorm(50, 0, 1)) 
  }
# get the mean of 100 lognormal distributions of size 50;
par(fig=c(0,1,0,0.6))
boxplot(res,horizontal=TRUE, bty="n", xlab= '')
par(fig=c(0,1,.30,0.95), new=TRUE)
hist(res, prob=TRUE, main="Means of repeated lognormal distribution", col="pink", xlab= '')
lines(density(res),lty=2)
rug(res)
par(fig=c(0,1,0,1))
# reset plot dimensions
res = 0 
# clear all res values


res = runif(50, min=0, max=10)
# Start with uniform distribution
par(fig=c(0,1,0,0.6))
res <-res^(0.10)
# Calculate the tenth root of res, will be left skewed;
boxplot(res,horizontal=TRUE, bty="n", xlab='')
par(fig=c(0,1,.30,0.95), new=TRUE)
hist(res, prob=TRUE, xlab= '', main="Left-skewed distribution (10th rt)", col=gray(.9))
lines(density(res),lty=2)
curve(dunif(x, min=0, max=10), lwd=2, add=TRUE)
rug(res); skewness(res);
par(fig=c(0,1,0,1))
# reset plot dimensions;

x <-seq(-4,4,0.1)
plot(x,dnorm(x), type="l",xlab="z",ylab="Pr[z]",
     main="The STD and SEM (n=5) of a normal distribution", lwd= 3)
curve(dnorm(x, mean=0, sd=1/sqrt(5) )/5, lwd= 2, col = "blue", add=T)

x <-seq(-4,4,0.1)
plot(x,dnorm(x), type="l",xlab="z",ylab="Pr[z]",
     main="The STD and SEM (n=100) of a normal distribution",lwd=2)
curve(dnorm(x, mean=0, sd=1/sqrt(100) )/10, add=T, col="blue", lwd=2)

