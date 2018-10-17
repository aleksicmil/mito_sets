
genes <- read.table("mito_sets/Data/mitominer.tsv", header = F, sep ="\t")
genes[ , 6] <- genes[ , 5]
names(genes) <- c("ID", "HPA", "GO", "MitoCarta", "IMPI_known", "IMPI_predicted")

genes[ ,2] <- as.numeric(genes[ ,2]) - 1
genes[ ,3] <- as.numeric(genes[ ,3]) - 1
genes[ ,4] <- as.numeric(genes[ ,4]) - 1

known <- function(x){
  if(x == "Known mitochondrial"){
    x <- 1
  } else {
    x <- 0
  }
}

pred <- function(x){
  if(x == "Predicted mitochondrial"){
    x <- 1
  } else {
    x <- 0
  }
}

genes[, 5] <- apply(as.data.frame(genes[ ,5]), 1, known)
genes[, 6] <- apply(as.data.frame(genes[ ,6]), 1, pred)

write.table(genes, "mito_sets/Data/mito_sets.csv", quote = F, row.names = F, 
            col.names = T, sep = ";")
