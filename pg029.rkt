#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (begin-shape)
  (fill 153 176 180)
  (vertex 180 82)
  (vertex 207 36)
  (vertex 214 63)
  (vertex 407 11)
  (vertex 412 30)
  (vertex 219 82)
  (vertex 226 109)
  (end-shape 'close)
  )

  
