## ----"speaqeasy_data"--------------------------------------------------------------------------
speaqeasy_data <- file.path(tempdir(), "rse_speaqeasy.RData")
download.file("https://github.com/LieberInstitute/SPEAQeasy-example/blob/master/rse_speaqeasy.RData?raw=true", speaqeasy_data, mode = "wb")
library("SummarizedExperiment")
load(speaqeasy_data, verbose = TRUE)
rse_gene


## ----"respuestas"------------------------------------------------------------------------------
table(rse_gene$PrimaryDx)
rse_gene$PrimaryDx <- droplevels(rse_gene$PrimaryDx)
with(colData(rse_gene), tapply(totalAssignedGene, PrimaryDx, summary))
with(colData(rse_gene), tapply(mitoRate, PrimaryDx, summary))

if (interactive()) iSEE::iSEE(rse_gene)

library("ggplot2")
ggplot(
    as.data.frame(colData(rse_gene)),
    aes(y = totalAssignedGene, group = PrimaryDx, x = PrimaryDx)
) +
    geom_boxplot() +
    theme_bw(base_size = 20) +
    xlab("Diagnosis")
ggplot(
    as.data.frame(colData(rse_gene)),
    aes(y = mitoRate, group = PrimaryDx, x = PrimaryDx)
) +
    geom_boxplot() +
    theme_bw(base_size = 20) +
    xlab("Diagnosis")

rowRanges(rse_gene)
i <- which(rowRanges(rse_gene)$Symbol == "SNAP25")
i
df <- data.frame(
    expression = assay(rse_gene)[i, ],
    Dx = rse_gene$PrimaryDx
)
ggplot(df, aes(y = log2(expression + 0.5), group = Dx, x = Dx)) +
    geom_boxplot() +
    theme_bw(base_size = 20) +
    xlab("Diagnosis") +
    ylab("SNAP25: log2(x + 0.5)")

colnames(colData(rse_gene))
table(rse_gene$BrainRegion)
table(rse_gene$Race)
mod <- with(
    colData(rse_gene),
    model.matrix(~ PrimaryDx + totalAssignedGene + rRNA_rate + BrainRegion + Sex + AgeDeath)
)
if (interacive()) {
    ExploreModelMatrix::ExploreModelMatrix(
        colData(rse_gene)[, c(
            "PrimaryDx", "totalAssignedGene", "rRNA_rate", "BrainRegion", "Sex",
            "AgeDeath"
        )],
        ~ PrimaryDx + totalAssignedGene + rRNA_rate + BrainRegion + Sex + AgeDeath
    )
}

