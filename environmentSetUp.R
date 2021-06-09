### This code is aimed at setting-up the R environment to obtain the amounts of reads mapping to premature and mature transcripts ###

# system("sudo apt-get update")
# system("sudo apt-get -y install libbz2-dev")
# system("sudo apt-get -y install liblzma-dev")

## Bioconductor packages installation
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

bioconductorPackages <- c("GenomicRanges","GenomicAlignments","GenomicFeatures","rtracklayer")

for(p in bioconductorPackages)
{
	if(!(p %in% rownames(installed.packages())))
	{
		print(p)
		BiocManager::install(p,suppressUpdate=TRUE,suppressAutoUpdate=TRUE)
	}
}

for(p in bioconductorPackages)
{
	library(p,verbose=FALSE,quietly=TRUE,character.only = TRUE)
}

sessionInfo()

# 
# R version 3.6.1 (2019-07-05)
# Platform: x86_64-pc-linux-gnu (64-bit)
# Running under: Ubuntu 18.04.2 LTS

# Matrix products: default
# BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.7.1
# LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.7.1

# locale:
#  [1] LC_CTYPE=it_IT.UTF-8       LC_NUMERIC=C              
#  [3] LC_TIME=it_IT.UTF-8        LC_COLLATE=it_IT.UTF-8    
#  [5] LC_MONETARY=it_IT.UTF-8    LC_MESSAGES=it_IT.UTF-8   
#  [7] LC_PAPER=it_IT.UTF-8       LC_NAME=C                 
#  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
# [11] LC_MEASUREMENT=it_IT.UTF-8 LC_IDENTIFICATION=C       

# attached base packages:
# [1] stats     graphics  grDevices utils     datasets  methods   base     

# loaded via a namespace (and not attached):
# [1] compiler_3.6.1

