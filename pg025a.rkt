#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 0)
  (no-loop)
  )

(define (draw)
  (fill 204)
  (ellipse 132 82 200 200)
  (fill 153)
  (ellipse 228 -16 200 200)
  (fill 102)
  (ellipse 268 118 200 200)
  )

  
