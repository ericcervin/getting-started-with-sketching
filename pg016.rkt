#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed))

(define (draw)
  (quad 158 55 199 14 392 66 351 107)
  (triangle 347 54 392 9 392 66)
  (triangle 158 55 290 91 290 112))
