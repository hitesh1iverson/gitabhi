#lang racket
;WAF ’wizardingTest’ that takes year of birth (YOB) as input and returns as output
(define (wizardingTest YOB)
  (if (exact-positive-integer? YOB)
  (cond
    [(= (- 2015 16) YOB) "OWLs"]
    [(= (- 2015 18) YOB) "NEWTs"]
    [(< (- 2015 16) YOB) "What’s the hurry?"]
    [(> (- 2015 18) YOB) "Too old for school!"])
     "confundus charms?"))
      
  
