setwd("~/Desktop/bioinf")
mtNd1 = readLines("mtNd1.fasta") #load and store fasta file
#There are 5 sequences.
table(strsplit(mtNd1[2], "")) #split line 2 of this file, with spaces
#this gives the number of A, C, T, G in that line - there are 13 As

#this for loop prints the first character in every line
for(line in mtNd1){
  firstletter = unlist(strsplit(line, ""))[1]
  cat(firstletter, "\n")
}

#this loop prints the category of every line, based on the first character
#> for identifier, NA for empty and the others for DNA sequence (thus assuming no errors)
for(line in mtNd1){
  firstletter = unlist(strsplit(line, ""))[1]
  if(is.na(firstletter)) {cat("EMPTY\n")}
  else if(firstletter=='>') {cat("IDENTIFIER\n")}
  else {cat("DNA Sequence\n")}
}
