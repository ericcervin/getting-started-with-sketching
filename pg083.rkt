#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )


(define (draw) 
  (let ([scalar (/ (constrain mouse-x 1 120) 60.0)])    
     (translate mouse-x mouse-y)
     (scale scalar)
     (stroke-weight (/ 1 scalar))
     (rect -15 -15 30 30)
       )
    )
  