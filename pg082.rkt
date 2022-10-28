#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )


(define (draw) 
      
  (translate mouse-x mouse-y)
  (scale (/ (constrain mouse-x 1 120) 60.0))
  (rect -15 -15 30 30)
  )
  