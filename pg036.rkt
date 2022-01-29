#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
    (let ([y 100]
          [d 130])
      (ellipse 75 y d d)
      (ellipse 175 y d d)
      (ellipse 275 y d d))
  )

  
