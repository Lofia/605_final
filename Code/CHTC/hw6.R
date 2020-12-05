rm(list=ls())

args=(commandArgs(trailingOnly=TRUE))
filename=list.files(args[2])
filepath=sapply(filename,function(x){paste(args[2],x,sep='/')})   
data=lapply(filepath,function(x){read.csv(x,stringsAsFactors=FALSE)})
tsla=read.csv(args[1],stringsAsFactors=FALSE)

f=function(x){#max correlation method
  N=nrow(x)
  if(N<252) return(100)
  numnull=0
  for(i in 2:N){
    if(x$Close[i]=='null'){
      x$Close[i]=x$Close[i-1]
      numnull=numnull+1
    }
  }
  if(numnull/N>0.1) return(100)
  u=rep(0,N)
  for(i in (1:(N-251))){
    a=x[i:(i+251),]
    a=a$Close
    a=as.numeric(a)
    b=tsla$Close
    b=as.numeric(b)
    u[i]=cor(a,b)
  }
  return(c(1/max(u,na.rm=TRUE),which(u==max(u))))
}

l=lapply(data,f)
s=data.frame(l)
r=data.frame(distance=as.vector(unlist(round(s[1,],3))),stockID=filename,i=as.vector(unlist(s[2,])))

write.csv(r,paste(args[2],'.csv',sep=''),row.names=FALSE,quote=FALSE)
