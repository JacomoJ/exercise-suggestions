# Solution

1) This code will not run.
  The bugs are:
  - The last function is not having the correct closing brackets.
  - Struct definition needs `(define-struct ...)`

2) The function is missing an else statement. The code will run, but if during runtime a case occurs that is not covered by the two conditions, then the program will break.
