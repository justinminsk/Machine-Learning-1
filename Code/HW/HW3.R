bumpers <-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/bumpers.vec")
normtemp<-read.csv("http://math.mercyhurst.edu/~sousley/STAT_139/data/normtemp.csv", header=T)
firstchi<-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/firstchi.vec")
pi2000<-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/pi2000.vec")
paradise<-scan("http://math.mercyhurst.edu/~sousley/STAT_139/data/paradise.vec")
# 2.31
hist(bumpers, main = 'Bumpers Histogram', col=c("yellow"))
# mean = 2000
# median = 2100
# std = 100
mean(bumpers)
# 2122.478
median(bumpers)
# 2129
sd(bumpers)
# 798.4574
hist(normtemp$temperature, main = 'Normal Temperature Histogram', col=c("red"))
# mean = 100
# median = 100
# std = 2
mean(normtemp$temperature)
# 98.24923
median(normtemp$temperature)
# 98.3
sd(normtemp$temperature)
# 0.7331832
hist(firstchi, main = 'First Child Histogram', col=c("black"))
# mean = 22.5
# median 21
# std = 2
mean(firstchi)
# 23.97701
median(firstchi)
# 23
sd(firstchi)
# 6.254258

# 2.32
hist(pi2000, main="Histogram of the First 2000 Digits of PI", col=c("brown"))
hist(pi2000, main="Histogram of the First 2000 Digits of PI", breaks= 0:10-.5, col=c("brown"))
# changing bins can allow you to see better if the data is skewed or not but be warned
# it can trick you either way.

# 2.33
hist(normtemp$temperature, main = 'Normal Temperature in 130 Humans Histogram', col=c("red"))
# mean = 100
mean(normtemp$temperature)
# 98.24923

# 2.36
paradise <- as.numeric(paradise)
paradise <- paradise[!is.na(paradise)]
hist(paradise, main="Histogram of the Dataset Paradise", col=c("orange"))
# it is a little skewed right but pretty close to norm dist

#3.5
boxplot(bumpers, main = 'Bumpers Boxplot', col=c("yellow"))
# simlar to the histogram
boxplot(normtemp$temperature, main = 'Normal Temperature Boxplot', col=c("red"))
# shwows three outliears compared to histogram
boxplot(firstchi, main = 'First Child Boxplot', col=c("black"))
# lots of hisgh outliears (black is a bad color)
boxplot(pi2000, main="Boxplot of the First 2000 Digits of PI", col=c("brown"))
# makes teh data look more norm dist
boxplot(paradise, main="Boxplot of the Dataset Paradise", col=c("orange"))
# shows a right tailed data 

# 3.6
boxplot(bumpers, main = 'Bumpers Boxplot', col=c("yellow"))
stripchart(bumpers, vertical=T, add=T)
# makes the data look more skewed higher
boxplot(pi2000, main="Boxplot of the First 2000 Digits of PI", col=c("brown"))
stripchart(pi2000, vertical=T, method="jitter",  add=T)
# makes every number look about the same in count