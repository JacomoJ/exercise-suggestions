;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sol_not-so-easy) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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

; List<Song> -> Number
; Purpose: Count the number of songs in a list
(define (no-songs ls) (cond [(equal? ls '()) 0]
                            [else (+ 1 (no-songs (rest ls)))]))

(define TEST-LIST (list (make-song "Deep Impact" "DJ Krush" "Reload" 267)
                        (make-song "We the people" "A tribe called quest" "We got it from here" 172)
                        (make-song "You can't go home again" "DJ Shadow" "Reconstructed" 423)
                        (make-song "Never gonna give you up" "Rick Astley" "Whenever you need somebody" 199)
                        (make-song "Cry for help" "Rick Astley" "Free" 241)
                        (make-song "Together forever" "Rick Astley" "Whenever you need somebody" 195)))

(check-expect (no-songs TEST-LIST) 6)

; List<Song> -> Number
; Purpose: Add the length of all songs in the list
(define (total-length ls) (cond [(equal? ls '()) 0]
                                [else (+ (song-length (first ls)) (total-length (rest ls)))]))

(check-expect (total-length TEST-LIST) (+ (+ (+ (+ (+ 267 172) 423) 199) 241) 195))

; T is a Type
; List<T> lambda(T -> Boolean) -> List<T>
; Purpose: Given a list and a boolean lambda, return a list which contains all
; the elements of the first list that satisfy the lambda function
(define (filter-out to-be-filtered list-filter)
  (cond [(empty? to-be-filtered) '()]
        [else (cond [(list-filter (first to-be-filtered))
                     (cons (first to-be-filtered) (filter-out (rest to-be-filtered) list-filter))]
                    [else (filter-out (rest to-be-filtered) list-filter)])]))

(check-expect (filter-out (list 1 2 3 4 5 6 7) (lambda (x) (= 0 (modulo x 2))))
              (list 2 4 6))

; List<Song>  Artist Album-> List<Song>
; Purpose: Filter out of a given list of songs basing on album and artist
(define (filter-by-album-artist ls album artist)
    (filter-out ls (lambda (x) (and (string=? album (song-album x))
                                    (string=? artist (song-artist x))))))

(define TEST-FILTER (list (make-song "Never gonna give you up" "Rick Astley" "Whenever you need somebody" 199)
                          (make-song "Together forever" "Rick Astley" "Whenever you need somebody" 195)))

(check-expect (filter-by-album-artist TEST-LIST "Whenever you need somebody" "Rick Astley") TEST-FILTER)
