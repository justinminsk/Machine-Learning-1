# 6.1
# 1
pnorm(2.2)
# 0.9860966
# 2
pnorm(2)-pnorm(-1)
# 0.8185946
# 3
1 - pnorm(2.5)
# 0.006209665
# 4
diff( c(qnorm(0.05), qnorm(0.95) ) )/2
pnorm(1.644854) - pnorm(-1.644854)
# b = 1.644854
# 6.2
# Normal(350,75), 450 pounds
1 - pnorm(450, mean = 350, sd = 75)
# 0.09121122 or 9.12% that a male black bear weighs more than 450 pounds.
# 6.3 
# mean 24.9 cm, sd 1.05 cm, < 26 cm, 95th percentile
pnorm(26, mean = 24.9, sd = 1.05)
# 0.8525929 or 85.3% probability that a Japanese women is under 26 cm tall.
qnorm(0.95,24.9,1.05)
# 26.6271 cm and higher is the 95th percentile.
# 6.4
# mean = 3.20 in, standard deviation of 0.35 in, 3.5 and 4 inches
pnorm(4, mean = 3.20, sd = 0.35) - pnorm(3.5, mean = 3.20, sd = 0.35)
# They make gloves for 0.1845475 or 18.45% of the population.
# 6.5
# Normal(12, 0.5) in, height of 10.7 inches or less
pnorm(10.7, mean = 12, sd = 0.5)
# There is a 0.004661188 or 0.47% chance of a box being filled to 10.7 in. or below.