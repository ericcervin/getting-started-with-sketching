#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  (no-stroke)
  )

(define (draw)
  (background 204 226 225)
  (fill 255 0 0 160)
  (ellipse 132 82 200 200)
  (fill 0 255 0 160)
  (ellipse 228 -16 200 200)
  (fill 0 0 255 160)
  (ellipse 268 118 200 200)
  )

  
