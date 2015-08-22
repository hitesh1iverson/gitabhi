#lang racket
;WAF ’numDuels’ that takes number of applicants as input, and returns the minimum number of 
;1-on-1 matches held that leaves out 3 participants.
(define (numStud year)
  (if (exact-positive-integer? year)
      (cond
        [ (= year 1991) 100 ]
        [ (< year 1991) (inexact->exact (round(* 100 (expt(- 1 .01)(- 1991 year)))))]
        [ (> year 1991) (inexact->exact (round(* 100 (expt(+ 1 .01)(- year 1991)))))])
      "Confundus Charm?"))
(define (numEligible year)
  (cond
    [ (eq?(modulo year 5) 0) (numStud year)]
    ["Diminuendo!"]))
(define (numDuels numberofapplicants) (- numberofapplicants 3))




     
