## ----first_rse----------------------------------------------------------------------------------------------------------------
## Lets build our first SummarizedExperiment object
library("SummarizedExperiment")
## ?SummarizedExperiment


## De la
nrows <- 200
ncols <- 6
counts <- matrix(runif(nrows * ncols, 1, 1e4), nrows)
rowRanges <- GRanges(
    rep(c("chr1", "chr2"), c(50, 150)),
    IRanges(floor(runif(200, 1e5, 1e6)), width = 100),
    strand = sample(c("+", "-"), 200, TRUE),
    feature_id = sprintf("ID%03d", 1:200)
)
colData <- DataFrame(
    Treatment = rep(c("ChIP", "Input"), 3),
    row.names = LETTERS[1:6]
)
rse <- SummarizedExperiment(
    assays = SimpleList(counts = counts),
    rowRanges = rowRanges,
    colData = colData
)
rse
dim(rse)
dimnames(rse)
assayNames(rse)
head(assay(rse))

rowRanges(rse)
rowData(rse) # same as 'mcols(rowRanges(rse))'
colData(rse)

