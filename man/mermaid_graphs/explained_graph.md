
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