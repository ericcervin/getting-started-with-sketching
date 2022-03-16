#lang sketching

(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (stroke-weight 30)
  )


(define (draw)
 (background 200)
 (stroke 102)
 (line 40 0 70 height)
 (when mouse-pressed (stroke 0))
 (line 0 70 width 50)
)
