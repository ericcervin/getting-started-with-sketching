#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)

  (stroke 0 102)
  (set-frame-rate! 60)
  )

(define (draw)
    ;racket's maximum pen size is 255
   (stroke-weight (constrain (dist mouse-x mouse-y pmouse-x pmouse-y) 0 255))
   (line mouse-x mouse-y pmouse-x pmouse-y)
)
