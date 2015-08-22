#lang racket
;WAF ’everEligible’ that takes a student’s year of birth as input.
(define (everEligible y) (>= (- 2015 y) 17))
