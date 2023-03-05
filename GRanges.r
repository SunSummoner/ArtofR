library(GenomicRanges)
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

ir = IRanges(start = 1:3, width = 2)
df = DataFrame(ir = ir , score = rnorm(3))
df
df[1,1]
df$ir
df2 = data.frame(ir = ir) 
gr <- GRanges(seqnames = "chr1", strand = c("+","-","+"))
ranges = IRanges(start= c(1,3,5), width =3)
gr
values(gr) = DataFrame(score = rnorm(3))
values(gr)



