-   [Genetic Algorithm Optimization
    Vignette](#genetic-algorithm-optimization-vignette)
    -   [Introduction](#introduction)
    -   [Aim](#aim)
    -   [Results](#results)
    -   [Conclusion](#conclusion)

# Genetic Algorithm Optimization Vignette

## Introduction

This vignette demonstrates how to use the `genetic.algo.optimizeR`
package to optimize the function *f*(*x*) = *x*<sup>2</sup> − 4*x* + 4
using a genetic algorithm.

## Aim

Optimize the function *f*(*x*) = *x*<sup>2</sup> − 4*x* + 4 to find the
value of *x* that minimizes the function.

## Results

### Initial Population

We start with a population of three individuals: *x*<sub>1</sub> = 1,
*x*<sub>2</sub> = 3, and *x*<sub>3</sub> = 0.

    #devtools::install_github("danymukesha/genetic.algo.optimizeR", upgrade = c("never"),)
    library(genetic.algo.optimizeR)

    # Initialize population
    population <- initialize_population(population_size = 3)
    population
    #> [1] -3.0572474  9.0573911 -0.2312613

### Evaluation

We evaluate the fitness of each individual by calculating *f*(*x*) for
each *x* value:

    # Evaluate fitness
    fitness <- evaluate_fitness(population)
    fitness
    #> [1] 25.575751 49.806769  4.978527

### Selection

We select individuals *x*<sub>1</sub> and *x*<sub>2</sub> as parents for
crossover because they have higher fitness.

    # Perform selection
    selected_parents <- selection(population, fitness, num_parents = 2)
    selected_parents
    #> [1]  9.057391 -3.057247

### Crossover and Mutation

We perform crossover and mutation on the selected parents to generate
offspring: *x*<sub>1</sub>′ = 1, *x*<sub>2</sub>′ = 3.

    # Perform crossover
    offspring <- crossover(selected_parents, offspring_size = 2)
    offspring
    #> [1] 9.057391 9.057391

    # Perform mutation
    mutated_offspring <- mutation(offspring, mutation_rate = 0.1)
    mutated_offspring
    #> [1] 9.089813 9.129477

### Replacement

We replace individual *x*<sub>1</sub> with offspring *x*<sub>1</sub>′,
maintaining the population size.

    # Replace individuals in the population
    new_population <- replacement(population, mutated_offspring, num_to_replace = 1)
    new_population
    #> [1]  9.0898129  9.0573911 -0.2312613

    # Termination
    # Repeat the above steps for multiple generations or until a termination condition is met.

## Conclusion

This vignette demonstrates the usage of the `genetic.algo.optimizeR`
package to optimize the given function using a genetic algorithm. Users
can follow similar steps to optimize other functions or customize the
parameters as needed. \`\`\`