#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (arc 90 60 80 80 0 pi/2)
  (arc 190 60 80 80 0 (+ pi pi/2))
  (arc 290 60 80 80 pi (+ 2pi pi/2))
  (arc 390 60 80 80 pi/4 (+ pi pi/4))
  )

  
