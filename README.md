# Unhandled Error in MATLAB Function

This repository demonstrates an uncommon error in MATLAB where an error condition is not handled effectively. The `myFunction` function attempts to perform a calculation, and it includes an error check for division by zero. However, other potential errors (e.g., non-numeric input) are not handled.

## How to Reproduce

1. Clone this repository.
2. Open `bug.m` in MATLAB.
3. Run the script.  It will throw an error if the input to `myFunction` is 0.
4. Observe that other error cases might not be properly handled.

## Solution

The `bugSolution.m` file provides a solution using `try-catch` blocks to handle a wider range of potential errors.