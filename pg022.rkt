#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (no-loop)
  )

(define (draw)
  (background 200)
  (stroke-weight 12)
  (rect 60 25 70 70)
  (stroke-join 'round)
  (rect 160 25 70 70)
  (stroke-join 'bevel)
  (rect 260 25 70 70)
  (stroke-join 'miter)
  (rect 360 25 70 70)
  )



  
