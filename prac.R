x = rnorm(100)
y = rnorm(100)
pdf("Figure.pdf")
plot(x, y, col = "green")
dev.off()
plot(cylinders, mpg, col="red", varwidth=T)
plot(cylinders, mpg, col="red", varwidth=T,horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders", ylab="MPG")
hist(mpg)
hist(mpg,col=2)
hist(mpg,col=2,breaks=15)
pairs(Auto)

pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)
plot(horsepower,mpg)
identify(horsepower,mpg,name)
summary(Auto)
summary(mpg)

randomWork <- function( num ) {
  seq = 0:num-1
  err = rnorm(num, 0, 2)
  for(i in 1:num) {
    seq[i+1] = seq[i] + err[i+1]
  }
  plot(seq, type="l")
}

randomWork(10000)

file = read.table("Auto.data", header = TRUE)

setwd("C:/Users/pfan8/Documents/R")
MEdata=read.table("http://eclab.jnu.edu.cn/stat/MEdata.txt",header=T)

library(quantmod)
setSymbolLookup(GZMT=list(name='600519.ss',src='yahoo'))
Stock_Index = getSymbols("GZMT")
getSymbols("MSFT")
msft=getYahooData("MSFT",start=20120101)
chartSeries(msft[, 'Open'],theme="white",up.col="red",dn.col="balck")
addBBands() # 增加布林线
addRSI()
add_MACD()
summary(AAPL[1:1000])
