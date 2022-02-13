#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (background 0)
  (for ([y (in-range 32 (+ height 1) 8)])
    (for ([x (in-range 12 (+ width 1) 15)])
      (ellipse (+ x y) y (- 16 (/ y 10.0)) (- 16 (/ y 10.0)))))
  )

  
