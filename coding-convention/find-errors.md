# Find Errors

Find violations of the coding convention in the following code snippets!

Variable and Parameters:

```
  (define v_r 4)
  (define (plus x) (+ x v_r))
```

```
  (define var 4)
  (define (plus x) (+ x var))
```

```
  (define VAR 5)
  (define (plus X) (+ X var))
```

```
  (define Var 5)
  (define (plus X) (+ X var))
```

```
  (define VAR 5)
  (define (plus X) (set! VAR (+ X var)))
```

Structs

```
  (define-struct blubb [r s])
```

```
  (define-struct BLUBB [r s])
```

```
  (define-struct BlUbB [r s])
```

```
  (define-struct Blubb [r s])
```

Functions

```
  (define (some-funny-function r) (* 4 r))
```

```
  ; number -> number
  (define (some-funny-function r) (* 4 r))
```

```
  ; number->number
  (define (some-funny-function r) (* 4 r))
```

```
  ; some-funny-function: number --> number
  (define (some-funny-function r s) (* r s ))
```

```
  ; some-funny-function: number -> number
  (define (some-funny-function r s) (* r s ))
```

```
  ; some-funny-function: number string -> number
  (define (some-funny-function r s) (* r s ))
```

