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
                        (make-song "You can't go home again" "DJ Shadow" "Reconstructed" 423)))

(check-expect (no-songs TEST-LIST) 3)

; List<Song> -> Number
; Purpose: Add the length of all songs in the list
(define (total-length ls) (cond [(equal? ls '()) 0]
                                [else (+ (song-length (first ls)) (total-length (rest ls)))]))

(check-expect (total-length TEST-LIST) (+ (+ 267 172) 423))
