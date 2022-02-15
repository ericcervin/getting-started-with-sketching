#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)

  (fill 0 102)
  (no-stroke)
  (set-frame-rate! 60)
  )

(define (draw)
  (ellipse mouse-x mouse-y 9 9)
  
)

  
