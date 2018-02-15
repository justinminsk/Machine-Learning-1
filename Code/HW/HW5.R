nba <-read.csv("http://math.mercyhurst.edu/~sousley/STAT_139/data/nba_draft.csv", header=T)
# get the data
balls <- nba$Balls
# get the balls in there own array
teams <- nba$Team
# get the teams in their own array
sum(balls)
# get the sum
balls <- balls/1000
# turn the numbers into prob. (0:1)
# Golden State, Chicago, Memphis, Denver, Houston, Cleveland, New York, Atlanta, Phoenix, Miami, Washington, L.A. Clippers Milwaukee   
# 0.225 0.225 0.157 0.120 0.089 0.064 0.044 0.029 0.015 0.014 0.007 0.006 0.005
sample(teams, size = 1, prob = balls)
# sample of the teams with prob. of balls
sample(teams, size = 10, prob = balls, replace = T)
# to speed up trying to get golden state
# Golden State was the first draw
hist(sample(c(1:13), size = 1000, prob = balls, replace = T))
# an example of the break down of prob.
# the data is right tailed, but is just how the data is orginized 