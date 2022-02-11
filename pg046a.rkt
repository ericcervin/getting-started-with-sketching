#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (background 0)
  (fill 255)
  (stroke 102)
  (for ([y (in-range 20 (- height 19) 10)])
    (for ([x (in-range 20 (- width 19) 10)])
      (ellipse x y 4 4)
      (line x y 240 60)
      )
    )
  )

  
