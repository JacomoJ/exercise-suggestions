# Debug code

Debug the following code snippets. State whether the code breaks before running or during execution of the program.

1)

```
; A Title is a String
; Interp: Title of a book

; An Author is a String
; Interp: Author of a book

; Book is a (make-book title author publisher pages year)
; where 
;       title is a Title
;       author is a Author
;       publisher is a String
;       pages is a Number
;       year is a Number
(define book (title author publisher pages year))

(book-title (make-book "Moby Dick" "Herman Melville" "Penguin Classics" 720 1851))

; List<Book> -> List<Author>
(define (get-authors lb) (cond [(equal? lb '()) '()]
                               [else (cons (book-author (first lb)) (get-authors (rest lb)))]))

; List<Author> -> Number
(define (count-authors la) (cond [(equal? lb '()) 0]
                                 [else (+ 1 (count-authors (rest la))]
```

2)
```
; Number -> Number 
(define (some-function r s t) (cond [(equal? r s) t]
                                    [(equal? s t) r]))
```
