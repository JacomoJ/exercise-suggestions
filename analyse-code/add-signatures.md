# Missing Signatures and Purpose Statements

Add signatures and purpose statements to the following functions!
Sometimes there is more than one possible signature.

1)

```
(define (a-funny-function r s) (* r s))
```

2)
```
(define (a-funny-function s) (string-append s "Banana"))
```

3)
```
(define (a-funny-function s) (cond [(equal? s "") #f]
                              [else (string-append s "Banana")]))
```

4)
```
(define-struct some-struct [x y])
  (define (a-funny-function s p) (cond [(equal? s "") #f]
                                  [else (make-some-struct s p)]))
```

5)
```
(define-struct some-struct [x y])
  (define (a-funny-function s) (cond [(equal? s '()) '()]
                                [else (cons (make-some-struct (first s) P) (a-funny-function (rest s)))]))
```

6)
```
(define (even-more-funny-function f xs)
  (cond [(empty? xs) '()]
        [else (cons (f (first xs)) (even-more-funny-function f (rest xs)))]))
```
