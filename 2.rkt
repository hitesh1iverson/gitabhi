#lang racket
;This function should calculate the number of students that may have enrolled in that year.
(define (numStud year)
  (if (exact-positive-integer? year)
      (cond
        [ (= year 1991) 100 ]
        [ (< year 1991) (inexact->exact (round(* 100 (expt(- 1 .01)(- 1991 year)))))]
        [ (> year 1991) (inexact->exact (round(* 100 (expt(+ 1 .01)(- year 1991)))))])
      "Confundus Charm?"))
     