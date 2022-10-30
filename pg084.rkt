#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )


(define (draw) 
  (push-matrix)
  (translate mouse-x mouse-y)
  (rect 0 0 30 30)
  (pop-matrix)
  (translate 35 10)
  (rect 0 0 15 15)
    )
  