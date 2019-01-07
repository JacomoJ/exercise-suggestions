# Find Errors

Find violations of the coding convention in the following code snippets!

## Variable and Parameters:

1) 

```
  (define v_r 4)
  (define (plus x) (+ x v_r))
```

2)
```
  (define var 4)
  (define (plus x) (+ x var))
```

3)
```
  (define VAR 5)
  (define (plus X) (+ X var))
```

4)
```
  (define Var 5)
  (define (plus X) (+ X var))
```

5)
```
  (define VAR 5)
  (define (plus X) (set! VAR (+ X var)))
```

## Structs

1)
```
  (define-struct blubb [r s])
```

2)
```
  (define-struct BLUBB [r s])
```

3)
```
  (define-struct BlUbB [r s])
```

4)
```
  (define-struct Blubb [r s])
```

## Functions

1)
```
  (define (some-funny-function r) (* 4 r))
```

2)
```
  ; number -> number
  (define (some-funny-function r) (* 4 r))
```

3)
```
  ; number->number
  (define (some-funny-function r) (* 4 r))
```

4)
```
  ; some-funny-function: number --> number
  (define (some-funny-function r s) (* r s ))
```

5)
```
  ; some-funny-function: number -> number
  (define (some-funny-function r s) (* r s ))
```

6)
```
  ; some-funny-function: number string -> number
  (define (some-funny-function r s) (* r s ))
```

