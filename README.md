
<!-- README.md is generated from README.Rmd. Please edit that file -->

# genetic.algo.optimizeR

<!-- badges: start -->
<!-- badges: end -->

The goal of `genetic.algo.optimizeR` is to optimize the function
$f(x) = x^2 - 4x + 4$ using a genetic algorithm. The function represents
a simple quadratic equation, and the goal is to find the value of $x$
that minimizes the function.

Here’s a breakdown of the aim and the results:

**Aim:**

- Optimize the function $f(x) = x^2 - 4x + 4$ to find the value of $x$
  that minimizes the function.

**Results:**

- **Initial Population**:

  - We start with a population of three individuals: $x_1 = 1$,
    $x_2 = 3$, and $x_3 = 0$. <br>

- **Evaluation**:

  - We evaluate the fitness of each individual by calculating $f(x)$ for
    each $x$ value:
    - $f(1) = 1^2 - 4*1 + 4 = 1$
    - $f(3) = 3^2 - 4*3 + 4 = 1$
    - $f(0) = 0^2 - 4*0 + 4 = 4$

- **Selection**:

  - We select individuals $x_1$ and $x_2$ as parents for crossover
    because they have higher fitness.

- **Crossover and Mutation**:

  - We perform crossover and mutation on the selected parents to
    generate offspring: $x_1' = 1$, $x_2' = 3$.

- **Replacement**:

  - We replace individual $x_1$ with offspring $x_1'$, maintaining the
    population size.

After multiple generations of repeating these steps, the genetic
algorithm aims to converge towards an optimal or near-optimal solution.
In this example, since it’s simple and the solution space is small, we
could expect the algorithm to converge relatively quickly towards the
optimal solution $x = 2$, where $f(x) = 0$.

***Explaining Graph***

``` mermaid
graph TD;
    A[Initialize Population] --> B(Evaluate Fitness);
    B --> C[Selection];
    C --> D{Termination Condition?};
    D -->|Yes| E[End];
    D -->|No| F[Crossover and Mutation];
    F --> G[Replace Population];
    G --> B;
    B -->|Example:| X1(Individual 1: x = 1);
    B --> X2(Individual 2: x = 3);
    B --> X3(Individual 3: x = 0);
    C -->|Example:| Y1(Selected Parents: x = 1, x = 3);
    F -->|Example:| Z1(Offspring 1: x = 1);
    F --> Z2(Offspring 2: x = 3);
```

## Usage

``` r
library(genetic.algo.optimizeR)

# Initialize population
population <- initialize_population(population_size = 3, min = 0, max = 3)
print("Initial Population:")
#> [1] "Initial Population:"
print(population)
#> [1] 1 2 3

while (TRUE) {
  # Evaluate fitness
  fitness <- evaluate_fitness(population)
  print("Evaluation:")
  print(fitness)
  
  
  # Check if the fitness of every individual is close to zero
  if (all(abs(fitness) <= 0.01)) {
    print("Termination Condition Reached: All individuals have fitness close to zero.")
    break
  }
  
  # Selection
  selected_parents <- selection(population, fitness, num_parents = 2)
  print("Selection:")
  print(selected_parents)
  
  # Crossover and Mutation
  offspring <- crossover(selected_parents, offspring_size = 2)
  mutated_offspring <- mutation(offspring, mutation_rate = 0) #(no mutation in this example)
  print("Crossover and Mutation:")
  print(mutated_offspring)
  
  # Replacement
  population <- replacement(population, mutated_offspring, num_to_replace = 1)
  print("Replacement:")
  print(population)
}
#> [1] "Evaluation:"
#> [1] 1 0 1
#> [1] "Selection:"
#> [1] 2 1
#> [1] "Crossover and Mutation:"
#> [1] 1 1
#> [1] "Replacement:"
#> [1] 1 2 1
#> [1] "Evaluation:"
#> [1] 1 0 1
#> [1] "Selection:"
#> [1] 2 1
#> [1] "Crossover and Mutation:"
#> [1] 2 2
#> [1] "Replacement:"
#> [1] 2 2 2
#> [1] "Evaluation:"
#> [1] 0 0 0
#> [1] "Termination Condition Reached: All individuals have fitness close to zero."
```
