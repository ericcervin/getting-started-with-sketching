#lang sketching

(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)

  (text-size 64)
  (text-align 'center)
  )

(define (draw)
  (background 0)
  (when key-pressed (text key 60 80))
  ) 
  
