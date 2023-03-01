library(GenomicRanges)
gr = GRanges(seqnames = c("chr1"),strand = c("+","-","+"), ranges = IRanges(start = c(1,3,5), width = 3))
#Chromosomes in Granges are called seqnames
gr
flank(gr, 5)
promoters(gr)
seqinfo(gr)
seqlengths(gr)= c("chr1"=10)
#Gives the length to the chromosome
seqlevels(gr)

gaps(gr)
#Gives all the things on chromosome not covered by Granges

seqnames(gr)=c("chr1", "chr2", "chr1")
#Will show error it'll recongnise that this organism has only one chromosome
seqlevels(gr)=c("chr1","chr2")
seqnames(gr)=c("chr1","chr2","chr1")
gr

sort(gr)
#Depends on the order of chromosome
seqlevels(gr)
seqlevels(gr)= c("chr2","chr1")
sort(gr)

#Assigning a genome to these
genome(gr)= "kv19"
gr
seqinfo(gr)
#Each chromosome can have its own genome
gr2=gr
genome(gr2) = "kv20"
findOverlaps(gr, gr2)
#Will cause error, safeguard for copies

