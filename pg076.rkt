#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )



(define (draw)
  (translate mouse-x mouse-y)
  (rect 0 0 30 30)
  )
  