#' Selecting the fitting the population
#'
#' The function described below selects the individuals that fit the best
#' based on the predefined condition(aim/objective). \cr
#' e.g.: To optimize the function \eqn{f(x) = x^2 - 4x + 4}
#' to find the value of \eqn{x} that minimizes the function.
#' \eqn{x}: represents a possible value the an individual from the population can have.
#'
#' @param population The list of individuals of the population
#' @param fitness The list of individuals(value) obtained from \code{\link[evaluate_fitness]{genetic.algo.optimizeR}} of the a population
#' @param num_parents The number of selected individuals that fit the best with the predefined aim.
#'
#' @returns The output expected should be a list of selected individuals
#' that fit the best with the predefined condition(aim/objective).
#'
#' @examples
#' # example of usage
#' \dontrun{
#' library(genetic.algo.optimizeR)
#'
#' population <- c(1, 3, 0)
#'
#' # Evaluate fitness
#' fitness <- evaluate_fitness(population)
#' print("Evaluation:")
#' print(fitness)
#'
#' #Selection
#' selected_parents <- selection(population, fitness, num_parents = 2)
#' print("Selection:")
#' print(selected_parents)
#' }
#'
#' @author Dany Mukesha
#'
#' @export
selection <- function(population, fitness, num_parents) {
  sorted_indices <- order(fitness, decreasing = FALSE)
  selected_parents <- population[sorted_indices[1:num_parents]]
  return(selected_parents)
}
