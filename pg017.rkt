#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed))

(define (draw)
  (background 180)
  (ellipse 278 -100 400 400)
  (ellipse 120  100 110 110)
  (ellipse 412 60 18 18))
