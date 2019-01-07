# Solution

1. Arithmetic

```
; Factor for conversion
; 1 mile/gallon = 1 * 1.609 km/ (3.785 l) = 1.609/3.785 km/l
(define FACTOR (/ 1.609 3.785))

; Number -> Number
; Purpose: convert given miles per gallon into km per liter
(define (mi/gal->km/l x) (* x FACTOR))

; Number -> Number
; Purpose: convert given km per liter into miles per gallon
(define (km/l->mi/gal x) (/ x FACTOR))
```

2. List of images

2.1 List circles from a list of strings

```
; Radius of circles
(define RADIUS 30)

; String -> Option<Color>
; Purpose: For a given string produce a circle image with that color
(define (string->circle s) (cond [(image-color? s) (circle RADIUS 'outline s)]
                                 [else #f]))

; List<String> -> List<Image>
; Purpose: for a given List<Strings> with colors produce a List<Images> with circles of that color.
(define (circle-list ls) (cond [(equal? ls '()) '()]
                               [else (local [(define circle (string->circle (first ls)))]
                                  (cond [(equal? circle #f) (circle-list (rest ls))]
                                        [else (cons circle (circle-list (rest ls)))]))]))
```

2.2 List circles from a list of strings and a list of numbers

```
; String Number -> Option<Color>
; Purpose: For a given string produce a circle image with that color
(define (string+radius->circle s r) (cond [(image-color? s) (circle r 'outline s)]
                                          [else #f]))

; List<String> List<Numbers> -> List<Image> 
; Purpose: for a given List<Strings> with colors and a List<Number> with radii produce a List<Images> with circles of that color.
(define (circle-list-with-radius ls lr) 
  (cond [(or (equal? ls '()) (equal? lr '())) '()]
        [else (local [(define circle (string+radius->circle (first ls) (first lr)))]
              (cond [(equal? circle #f) (circle-list-with-radius (rest ls) (rest lr))]
                    [else (cons circle (circle-list-with-radius (rest ls) (rest lr)))]))]))
```

2.3 Stack images

```
; Width and Height of empty scene
(define WIDTH 800)
(define HEIGHT 800)

; List<Image> -> Image
; Purpose: Stack images in a list ontop of each other
(define (stack-images li) (cond [(equal? li '()) (empty-scene WIDTH HEIGHT)]
                                [else (place-image (first li) 0 0 (stack-images (rest li)))]))
```

2.4 Overlay images
```
; List<Images> -> Image
; Purpose: overlay images so that one is below the other
(define (one-below-the-other li) (cond [(equal? li '()) (empty-scene 1 1)]
                                       [else (above (first li) (one-below-the-other (rest li)))]))
```

3. Audio player

```
; A Title is a String
; Interp: Title of a Song

; An Artist is a String
; Interp: Artist performing a Song

; An Album is a String
; Interp: Album of Songs

; A Length is a Number
; Interp: Length of a song in sec

; Song is a (make-song title artist album length)
; where
;        title is a Title
;        artist is an Artist
;        album is an Album
;        length is a Length
(define-struct song (title artist album length))

; Song Title -> Song
; Purpose: Change the title of a song
(define (change-title s t) (make-song t (song-artist s) (song-album s) (song-length s)))

; Song Artist -> Song
; Purpose: Change the artist of a song
(define (change-artist s a) (make-song (song-title s) a (song-album s) (song-length s)))

; Song Album -> Song
; Purpose: Change the album of a song
(define (change-album s a) (make-song (song-title s) (song-artist s) a (song-length s)))

; Song Length -> Song
; Purpose: Change the album of a song
(define (change-length s l) (make-song (song-title s) (song-artist s) (song-album s) l))
```
