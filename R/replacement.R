replacement <- function(population, offspring, num_to_replace) {
  num_population <- length(population)
  unsurvivor <- setdiff(population, offspring)
  replace_indices <- sample(length(unsurvivor), num_to_replace, replace = FALSE)
  population[population %in% unsurvivor[replace_indices]] <- offspring[1:num_to_replace]
  return(population)
}
