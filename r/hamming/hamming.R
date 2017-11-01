# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  
  strand1_length <- nchar(strand1)
  strand2_length <- nchar(strand2)
  
  if(strand1_length != strand2_length) {
    stop("Strands must be same length")
  }
  
  if(strand1_length == 0 || strand2_length == 0) {
    return(0)
  }

  distance <- 0
  
  for(i in 1:nchar(strand1)) {
    strand_1_character <- substr(strand1,i,i)
    strand_2_character <- substr(strand2,i,i)
  
    if(strand_1_character != strand_2_character) {
      distance <- distance + 1
    } 
  }

  return(distance)
}
