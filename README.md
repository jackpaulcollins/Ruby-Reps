# Ruby Reps ![Ruby](https://www.ruby-lang.org/images/header-ruby-logo.png)



Ruby Reps is a repository for practicing leetcode style questions with a focus on Ruby, Ruby standard syntax, and tests ([Rspec](https://rspec.info/)). 

Each question is given its own directory, and each question's directory contains the following:

- `[problem_name].md`: A Markdown file describing the problem statement, constraints, and example inputs/outputs.
- `[problem_name].rb`: A Ruby file containing a class that solves the problem.
- `[problem_name]_spec.rb`: A test file using RSpec to verify the correctness of the solution.

In order to add a question to the repo you most commit all three of the above file types into a new directory, named after the problem, in the appropriate easy/medium/hard sub-directory. There must be at least one test that passes, and the code must pass the standard [rubocop](https://github.com/rubocop/rubocop) linter.
