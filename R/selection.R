selection <- function(population, fitness, num_parents) {
  sorted_indices <- order(fitness, decreasing = FALSE)
  selected_parents <- population[sorted_indices[1:num_parents]]
  return(selected_parents)
}