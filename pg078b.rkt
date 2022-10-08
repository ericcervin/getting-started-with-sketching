#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )



(define (draw)
  (rotate (/ mouse-x 100.0))
  (rect -80 -10 160 20)
  )
  