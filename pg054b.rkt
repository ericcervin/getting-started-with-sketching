#lang sketching
(define (setup)
  (size 220 120)
  (smoothing 'smoothed)
  (background 200)
  (set-frame-rate! 60)
  )

(define x 1)
(define easing 0.01)

(define (update-x)
  (let ([target-x mouse-x])
       (set! x (+ x (* (- target-x x) easing)))
       (displayln (list target-x x))
    )
  
  )

(define (draw)
   (update-x)
   (ellipse x 40 12 12)
)
