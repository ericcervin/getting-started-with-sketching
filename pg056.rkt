#lang sketching

(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (background 200)
  (set-frame-rate! 60)

  (stroke 0 102)
  )

(struct state (x y px py weight))
(define s (state 1 1 1 1 1))

(define (update-state)
  (let* ([easing 0.05]
         [px (state-x s)]
         [py (state-y s )]
         [x (+ px (* (- (mouse-x) px) easing))]
         [y (+ py (* (- (mouse-y) py) easing))]
         [weight (dist px py x y)]
        )
       (set! s (state x y px py weight) )
      )
  )

(define (draw)
   (update-state)
   (stroke-weight (state-weight s))
   (line (state-x s) (state-y s) (state-px s) (state-py s))
)
