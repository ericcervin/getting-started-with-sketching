#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)

  (stroke 0 102)
  (set-frame-rate! 60)
  )

(define (draw)
   (stroke-weight (dist mouse-x mouse-y pmouse-x pmouse-y))
   (line mouse-x mouse-y pmouse-x pmouse-y)
)
