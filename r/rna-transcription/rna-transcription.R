COMPLEMENT_MAPPING <- list("G" = "C", "C" = "G", "T" = "A", "A" = "U")

map_nucleotide <- function(rna) {
  complement <- COMPLEMENT_MAPPING[[rna]]
  if(is.null(complement)) {
    stop("Invalid RNA")
  }
  
  complement
}

to_rna <- function(dna) {
  nucleotides <- unlist(strsplit(dna,""))
  
  rna_complements <- sapply(nucleotides, map_nucleotide)

  paste(rna_complements, sep="", collapse="")
}
