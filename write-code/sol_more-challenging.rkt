;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sol_more-challenging) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; More challenging coding tasks ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Audio player
;;;;;;;;;;;;;;

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

; A constant test list with some songs
(define TEST-LIST (list (make-song "Deep Impact" "DJ Krush" "Reload" 267)
                        (make-song "We the people" "A tribe called quest" "We got it from here" 172)
                        (make-song "You can't go home again" "DJ Shadow" "Reconstructed" 423)))

; A Binary Search Tree (BST) is one of:
; - (make-leaf)
; - (make-branch Song BST BST)
; where all songs in the left subtree are shorter (or equal) than the ones in the right subtree
(define-struct leaf [])
(define-struct branch [song left right])

; BST -> BST
; Purpose: Insert a song into a given BST
(define (insert-song-sl t s) (cond [(leaf? t) (make-branch s (make-leaf) (make-leaf))]
                                [(branch? t) 
                                 (cond [(<= (song-length s) (song-length (branch-song t))) 
                                        (make-branch (branch-song t) 
                                                     (insert-song-sl (branch-left t) s) 
                                                     (branch-right t))]
                                        [(> (song-length s) (song-length (branch-song t))) 
                                        (make-branch (branch-song t) 
                                                     (branch-left t) 
                                                     (insert-song-sl (branch-right t) s))])]))

; List<Song> -> BST
; Purpose: Insert all songs from a list into a BST
(define (insert-all-songs ls) (cond [(equal? ls '()) (make-leaf)]
                                    [else (insert-song-sl (insert-all-songs (rest ls)) (first ls))]))

(insert-all-songs TEST-LIST)

; BST Length -> Option<Song>
; Purpose: Find a song with a given length 
; (it does not find all songs... only one... To find all songs one could introduce another tree with a List<Song> as the branch value...)
(define (bst-member-sl? t l) (cond [(leaf? t) #f]
                                [(branch? t) 
                                 (cond [(< l (song-length (branch-song t)))
                                        (bst-member-sl? (branch-left t) l)]
                                       [(> l (song-length (branch-song t)))
                                        (bst-member-sl? (branch-right t) l)]
                                       [(= l (song-length (branch-song t))) (branch-song t)])]))

(check-expect (bst-member-sl? (insert-all-songs TEST-LIST) 267) (make-song "Deep Impact" "DJ Krush" "Reload" 267))

; BST with song-title
;;;;;;;;;;;;;;;;;;;;;

; This is basically a copy of the above code.
; The only change: The order relation.

; BST -> BST
; Purpose: Insert a song into a given BST
(define (insert-song-st t s) (cond [(leaf? t) (make-branch s (make-leaf) (make-leaf))]
                                [(branch? t) 
                                 (cond [(string-ci<=? (song-title s) (song-title (branch-song t))) 
                                        (make-branch (branch-song t) 
                                                     (insert-song-st (branch-left t) s) 
                                                     (branch-right t))]
                                        [(string-ci>? (song-title s) (song-title (branch-song t))) 
                                        (make-branch (branch-song t) 
                                                     (branch-left t) 
                                                     (insert-song-st (branch-right t) s))])]))

; List<Song> -> BST
; Purpose: Insert all songs from a list into a BST
(define (insert-all-songs-st ls) (cond [(equal? ls '()) (make-leaf)]
                                    [else (insert-song-st (insert-all-songs-st (rest ls)) (first ls))]))

(insert-all-songs-st TEST-LIST)

; BST String -> Option<Song>
; Purpose: Find a song with a given length 
; (it does not find all songs... only one... To find all songs one could introduce another tree with a List<Song> as the branch value...)
(define (bst-member-st? t s) (cond [(leaf? t) #f]
                                [(branch? t) 
                                 (cond [(string-ci<? s (song-title (branch-song t)))
                                        (bst-member-st? (branch-left t) s)]
                                       [(string-ci>? s (song-title (branch-song t)))
                                        (bst-member-st? (branch-right t) s)]
                                       [else (branch-song t)])]))

(check-expect (bst-member-st? (insert-all-songs-st TEST-LIST) "Deep Impact") (make-song "Deep Impact" "DJ Krush" "Reload" 267))
