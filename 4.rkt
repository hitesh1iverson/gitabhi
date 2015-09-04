#lang racket
;WAF ’numEligible’ that takes a year as input.
(define (numEligible year)
  (cond
    [ (eq?(modulo year 5) 0) (numStud year)]
    ["Diminuendo!"]))
(define (numStud year)
  (if (exact-positive-integer? year)
      (cond
        [ (= year 1991) 100 ]
        [ (< year 1991) (inexact->exact (round(* 100 (expt(- 1 .01)(- 1991 year)))))]
        [ (> year 1991) (inexact->exact (round(* 100 (expt(+ 1 .01)(- year 1991)))))])
      "Confundus Charm?"))
