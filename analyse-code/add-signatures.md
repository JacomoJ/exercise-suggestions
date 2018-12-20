# Missing Signatures and Purpose Statements

Add signatures and purpose statements to the following functions!
Sometimes there is more than one possible signature.

```
(define (a-funny-function r s) (* r s))
```

```
(define (a-funny-function s) (string-append s "Banana"))
```

```
(define (a-funny-function s) (cond [(equal? s "") #f]
                              [else (string-append s "Banana")]))
```

```
(define-struct some-struct [x y])
  (define (a-funny-function s p) (cond [(equal? s "") #f]
                                  [else (make-some-struct s p)]))
```

```
(define-struct some-struct [x y])
  (define (a-funny-function s) (cond [(equal? '()) '()]
                                [else (cons (make-some-struct s P) (a-funny-function s))]))
```

```
(define (even-more-funny-function f xs)
  (cond [(empty? xs) '()]
        [else (cons (f (first xs)) (even-more-funny-function f (rest xs)))]))
```
