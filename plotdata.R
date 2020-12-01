library("ggplot2")
library("lubridate")
target=read.csv("Data/TSLA/TSLA.csv")
data1=read.csv("Data/TSLA.MX/TSLA.MX.csv")
data2=read.csv("Data/TL0.F/TL0.F.csv")
data3=read.csv("Data/TL0.BE/TL0.BE.csv")
data4=read.csv("Data/TL0.HA/TL0.HA.csv")
data5=read.csv("Data/ROLLT.BO/ROLLT.BO.csv")
data6=read.csv("Data/C1S.BE/C1S.BE.csv")
data7=read.csv("Data/C1S.F/C1S.F.csv")
data8=read.csv("Data/EPMT.JK/EPMT.JK.csv")
data9=read.csv("Data/HBH.DU/HBH.DU.csv")
data10=read.csv("Data/BBSD11.SA/BBSD11.SA.csv")
target=as.numeric(target$Close)
data1=as.numeric(data1$Close)
data2=as.numeric(data2$Close)
data3=as.numeric(data3$Close)
data4=as.numeric(data4$Close)
data5=as.numeric(data5$Close)
data6=as.numeric(data6$Close)
data7=as.numeric(data7$Close)
data8=as.numeric(data8$Close)
data9=as.numeric(data9$Close)
data10=as.numeric(data10$Close)
standard=function(data){
  return((data-mean(data,na.rm=TRUE))/sd(data,na.rm=TRUE))
}


df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data1[1021:1421])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data2[2159:2559])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data3[2161:2561])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data4[667:1067])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data5[1541:1941])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data6[2967:3367])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data7[1501:1901])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data8[667:1067])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data9[1079:1479])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:401,times=2),Price=c(standard(target[2143:2543]),standard(data10[782:1182])),stock=rep(c("Tesla","another"),each=401))
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  geom_vline(xintercept = 252) +
  xlab("time")

df=data.frame(Time=rep(1:2543,times=1),Price=c(target),stock=rep("Tesla"),each=2543)
ggplot(data=df,mapping=aes(x=Time,y=Price,colour=stock)) +
  geom_line() +
  xlab("time")
