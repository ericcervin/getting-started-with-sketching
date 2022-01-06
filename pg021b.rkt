#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  )

(define (draw)
  (background 180)
  (stroke-weight 24)
  (line 60 25 130 95)
  (stroke-cap 'square)
  (line 160 25 230 95)
  (stroke-cap 'project)
  (line 260 25 330 95)
  (stroke-cap 'round)
  (line 360 25 430 95)
  )



  
