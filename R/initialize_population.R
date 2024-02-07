initialize_population <- function(population_size, min = -100, max = 100) {
  large_population <- runif(10 * population_size, min = min, max = max) |>
    round(x = _, digits = 0)
  population <- sample(unique(large_population), population_size)
  return(population)
}
