## Reverse Polish Notation Calculator Code Challenge

### Objective
Create a calculator that will take in equations in RPN format i.e. `5 1 2 + 4 * + 3 -`.
This equation (normally written as `5 + ((1 + 2) * 4) - 3`) should evaluate to 14.

### Process
I attempted to make my work process easy to follow by creating branches, writing clear
commit messages and updating comments about my process to the calculator.rb file.

### Run Calculator
1. Clone down this project
2. From CL and in the project root, run `ruby runner.rb` to use calculator.
3. Note - if an arithmetic operator is accidentally entered when there is either only 1 or no integer (i.e. `1 +`), simply enter an integer and the calculator will continue where it left off. I.e. `1 + 5 +` will calculate `6`.

### Run Tests
1. From CL and in the project root, run `ruby calculator_test.rb`.

