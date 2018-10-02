
genes <- read.table("mito_sets/Data/mitominer.tsv", header = F, sep ="\t")
genes[ , 6] <- genes[ , 5]
names(genes) <- c("ID", "HPA", "GO", "MitoCarta", "IMPI_known", "IMPI_predicted")

genes[,2] <- as.numeric(genes[ ,2]) - 1
genes[,3] <- as.numeric(genes[ ,3]) - 1
genes[,4] <- as.numeric(genes[ ,4]) - 1

genes[ ,]