# 2.4
a <- rep("a", 5)
hunderd <- seq(1, 100, 2)
threes <- c(rep(1, 3), rep(2, 3), rep(3, 3))
threes2 <- c(rep(1, 3), rep(2, 2), rep(3, 1))
upAndDown <- c(seq(1, 5), seq(4, 1))

# 2.13
mtcars
factor(mtcars$am, c(0, 1))

# 2.14
library(HistData)
df <- HistData::Arbuthnot
df$Females > df$Males

# 2.18
# Like python, R compares strings by ascii values. This means lower case letters
# has a lower value to upper case letters. This also means adding a letter increases 
# the value. The same is for "stringed" intergers. They follow ascii values and it 
# usees the ascii value and not the interger value.

# E1

Stdata<-c(10,10,15,20,35,40,40,40,45,45,50)

avg <- function(x){
  mean_stdata <- sum(x)/length(x)
  return(mean_stdata)
}

st_d <- function(x, mean_stdata){
  st_d_stdata <- (sum((x-mean_stdata)^2/(length(x)-1)))^0.5
  return(st_d_stdata)
}

avg(Stdata)
st_d(Stdata, avg(Stdata))
