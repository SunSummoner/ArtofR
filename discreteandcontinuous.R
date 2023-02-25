x <- runif(2000, min=2, max=6)
x
x[2]
mm<-rep()
me<-rep()
for(y in (1:10000)){
  
  for (i in (1:10)){
    r=sample(1:1990)
    mm[i]= x[r]
  }
  me[y]=mean(mm)
}

