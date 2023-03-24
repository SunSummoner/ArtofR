install.packages("tidyverse")
getwd()
library("GEOquery")
library(SummarizedExperiment)

list.files("GEO")

tempdir()
#Temporary directory for GEO files

gse <- getGEO(GEO = "GSE103512")

gse

class(gse)
length(gse)

gse103512 <- as(gse$GSE103152_series_matix.txt.g, "SummarizedExperiment")

class(gse103512)
gse103512

isS4(gse103512)
typeof(gse103512)
attributes(gse103512)[["class"]]

class(gse103512)
is(gse103512, "SummarizedExperiment")

getClass("SummarizedExperiment")

slotNames(gse103512)

metadata(gse103512)

class(metadata(gse103512))

names(metadata(gse103512))


metadata(gse103512)$formula <- exprse - cancer.type.ch1 + normal.ch1
#Adding design matrix formula for differential expression analysis

names(metadata(gse103512))

metadata((gse103512)["experimentData"])

class(metadata((gse103512)["experimentData"]))

isS4(metadata((gse103512)["experimentData"]))

Biobase::'MIAME-class'    

miame <- metadata((gse103512)["experimentData"])


miame

expinfo(miame)

#expinfo(miame)[c("Title", "url")]

abstract(miame)

pubmedIDs(miame)

names(otherInfo(miame))

otherInfo(miame)[c("relation", "overall_design")]

assays(gse103512)

class(assay(gse103512, 'exprs'))

dim(assay(gse103512, 'exprs'))


tibble::as_tibble(assay(gse103512, "exprs"))

y_id <- "GSE33126"
gse <- getGEO(my_id)length(gse)
gse <- gse[[1]]
gse
pData(gse)
exprs(gse)
summary(exprs(gse))

