crossover <- function(parents, offspring_size) {
  num_parents <- length(parents)
  offspring <- numeric(offspring_size)

  for (i in seq(1, offspring_size, by = 2)) {
    parent1_index <- sample(1:num_parents, 1)
    parent2_index <- sample(1:num_parents, 1)

    offspring[i] <- (parents[parent1_index] + parents[parent2_index]) / 2
    offspring[i+1] <- (parents[parent1_index] + parents[parent2_index]) / 2
  }

  return(offspring)
}
