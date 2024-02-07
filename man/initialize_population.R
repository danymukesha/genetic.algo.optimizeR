initialize_population <- function(population_size) {
  population <- runif(population_size, min = -10, max = 10)
  return(population)
}
