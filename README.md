
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
