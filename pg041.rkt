#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (stroke-weight 8)
  (for ([i (in-range 20 400 60)])
    (line i 40 (+ i 60) 80)
    ))

  
