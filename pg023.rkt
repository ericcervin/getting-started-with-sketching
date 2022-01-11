#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (rect 120 60 80 80)
  (ellipse 120 60 80 80)
  (ellipse-mode 'corner)
  (rect 280 20 80 80)
  (ellipse 280 20 80 80)
  )



  
