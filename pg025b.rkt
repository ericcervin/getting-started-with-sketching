#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (fill 153)
  (ellipse 132 82 200 200)
  (no-fill)
  (ellipse 228 -16 200 200)
  (no-stroke)
  (ellipse 268 118 200 200)
  )

  
