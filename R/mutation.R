mutation <- function(offspring, mutation_rate) {
  num_offspring <- length(offspring)

  for (i in seq(num_offspring)) {
    if (runif(1) < mutation_rate) {
      offspring[i] <- offspring[i] + rnorm(1, mean = 0, sd = 0.1)  # Add small random value
    }
  }

  return(offspring)
}
