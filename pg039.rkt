#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
    (let*([x 25]
         [h 20]
         [y 25]
         [x2 (+ x 100)]
         [x3 (- x2 250)])
      (rect x y 300 h)
      (rect x2 (+ y h) 300 h)
      (rect x3 (+ y (* 2 h)) 300 h))
  )

  
