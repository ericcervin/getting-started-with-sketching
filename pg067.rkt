#lang sketching

(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  )

(define (draw)
  (background 204)
  (line 20 20 220 100)
  (when key-pressed (line 220 20 20 100))
  ) 
  
