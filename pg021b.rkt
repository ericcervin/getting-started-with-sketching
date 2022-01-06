#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  )

(define (draw)
  (background 180)
  (stroke-weight 1)
  (ellipse 75 60 90 90)
  (stroke-weight 8)
  (ellipse 175 60 90 90)
  (ellipse 279 60 90 90)
  (stroke-weight 20)
  (ellipse 389 60 90 90)
  )



  
