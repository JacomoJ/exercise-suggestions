# Add signatures

Add signatures to the following functions!

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
