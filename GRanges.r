irl <- IRanges(start = c(1,3,5), end = c(3,5,7))
print (irl)

irl <- IRanges(start = c(1,3,5), width = 3)
print (irl)
#both will give the same result
start(irl)
width(ir2)<- 1
print(ir2)
names(irl) <- paste("A", 1:3, sep="")
print(irl)