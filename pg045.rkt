#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (background 0)
  (fill 255 140)
  (no-stroke)
  (for ([y (in-range 0 (+ height 1) 40)])
    (ellipse 0 y 40 40))
  
  (for ([x (in-range 0 (+ width 1) 40)])
    (ellipse x 0 40 40))
  )

  
