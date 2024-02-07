evaluate_fitness <- function(population) {
  fitness <- population^2 - 4 * population + 4
  return(fitness)
}
