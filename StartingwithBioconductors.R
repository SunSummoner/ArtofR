if (!require("BiocManager", quietly = TRUE))
+     install.packages("BiocManager")
#for versions more than 3.5 of R
BiocManager::install()
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))
#Installing specific packages
BiocManager::valid()
#To check
BiocManager::valid("limma")
BiocManager::install("limma")
