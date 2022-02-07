#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (stroke-weight 2)
  (for ([i (in-range 20 400 20)])
    (line i 0 (+ i (/ i 2)) 80))
  )

  
