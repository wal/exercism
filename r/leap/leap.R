is_divisible <- function(x, b) {
  return(x %% b == 0)
}

leap <- function(year) {
  
  if(is_divisible(year, 400)) {
    return(TRUE)
  }
  
  return(is_divisible(year, 4) & !is_divisible(year, 100)) 
}
