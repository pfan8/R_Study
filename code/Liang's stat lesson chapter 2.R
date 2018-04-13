x=runif(10000) #浜х敓10000涓湇浠嶶(0,1)鐨勯殢鏈烘暟
theta.hat1=mean(exp(-x)) #璁＄畻鍧????
theta.hat1

x=rexp(10000,1) #)10000????lExp(1)??????
theta.hat3=mean(exp(x)/(x^x)) #O??????
theta.hat3

set.seed(100)
Noise=rnorm(100000)
BM=cumsum(Noise)
plot(BM, type="l", main="1维布朗运动", xlab="鏃堕棿", ylab="浣嶇疆")

set.seed(100)
x.noise <- rnorm(1000000);y.noise <- rnorm(1000000)
x.dist <- cumsum(x.noise);y.dist <- cumsum(y.noise)
plot(x.dist, y.dist, type="l", main="2维布朗运动", xlab="鏃堕棿", ylab="浣嶇疆")


library(rgl)
set.seed(100)
z.noise <- rnorm(1000000);z.dist <- cumsum(z.noise)
plot3d(x.dist, y.dist, z.dist, type="l",col='navyblue',main="3维布朗运动")