## ----install, eval = FALSE----------------------------------------------------------------------------------------------------
## ## For installing Bioconductor packages
## if (!requireNamespace("BiocManager", quietly = TRUE)) {
##       install.packages("BiocManager")
##   }
## 
## ## Install required packages
## BiocManager::install(
##     c(
##         "usethis", ## Utilities
##         "here",
##         "biocthis",
##         "postcards",
##         "pryr",
##         "sessioninfo",
## 
##         "SummarizedExperiment", ## Main containers / vis
##         "iSEE",
## 
##         "edgeR", ## RNA-seq
##         "ExploreModelMatrix",
##         "limma",
##         "recount3",
## 
##         "pheatmap", ## Visualization
##         "ggplot2",
##         "patchwork",
##         "RColorBrewer",
## 
##         "spatialLIBD" ## Advanced
##     )
## )


## ----session_packages, eval = TRUE, message = FALSE---------------------------------------------------------------------------
## Load the package at the top of your script
library("sessioninfo")

##  Utilities
library("BiocStyle")
library("biocthis")
library("here")
library("postcards")
library("pryr")
library("usethis")
library("sessioninfo")

## Main containers / vis
library("SummarizedExperiment")
library("iSEE")

## RNA-seq
library("edgeR")
library("ExploreModelMatrix")
library("limma")
library("recount3")

## Visualization
library("ggplot2")
library("patchwork")
library("pheatmap")
library("RColorBrewer")

## Advanced
library("spatialLIBD")


## ----session_info-------------------------------------------------------------------------------------------------------------
## Reproducibility information
options(width = 120)
session_info()
proc.time()

