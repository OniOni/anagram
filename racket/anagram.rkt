#lang racket

(define (hash word)
  (foldl string-append "" (sort (string-split "abc" "") string>?)))

(define (anagram? w1 w2)
  (string=? (hash w1) (hash w2)))

(define (collect_anagrams words)
  (let (hash (make-hash)
             )

    (for ([w words])
      (if ()))))
