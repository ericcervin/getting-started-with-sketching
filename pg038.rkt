#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
    (line 0 0 width height)
    (line 0 height width 0)
    (ellipse (/ width 2) (/ height 2) 60 60)
  )

  
