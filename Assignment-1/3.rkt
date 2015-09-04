#lang racket

(define (foundingYear number)
(inexact->exact (round(- 1991 (/  (log (/ number 100)) (log 0.99))))))
     
