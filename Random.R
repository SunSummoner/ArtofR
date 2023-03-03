sample(1:6, 2000, replace=TRUE)
print(getwd())
getOption("max.print")
options(max.print=2000)
sample(1:6, 2000, replace=TRUE)
data <-sample(1:6, 2000, replace=TRUE)
data
sample(1:1990, 1)
d1<-data[96:106]
x<-1:200

mm<-rep()
d<-rep()
for (y in (1:200)){
  r=sample(1:1989, 1)
  d<-data[r:r+10]
  me<- mean(d)
  mm[y]=me
}
mm
mn = as.numeric(mm)
png(file = "his2.png")
hist(mn,xlab = "mean",col = "yellow",border = "blue")
dev.off()

sample(1:6, 20000, replace=TRUE)
data2<-sample(1:6, 20000, replace=TRUE)
data2


x<-1:2000

means<-rep()
de<-rep()
for (y in (1:2000)){
  r=sample(1:19989, 1)
  de<-data2[r:r+10]
  mem<- mean(de)
  means[y]=mem
}
means
mnn = as.numeric(means)
png(file = "his23.png")
hist(mnn,xlab = "mean",col = "yellow",border = "blue")
dev.off()




















