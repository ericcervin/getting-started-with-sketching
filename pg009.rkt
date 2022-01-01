#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed))

(define (draw)
  (cond
    [mouse-pressed  (fill 0)]
    [else           (fill 255)])

   (ellipse mouse-x mouse-y 80 80)
  )

