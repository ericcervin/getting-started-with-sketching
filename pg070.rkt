#lang sketching
(define (setup)
  (size 480 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  )

(struct state (x))
(define s (state 215))

(define (update-state)
  (when key-pressed
    (when  (equal? key 'right)   (:= s.x (add1 s.x)))
    (when  (equal? key 'left)    (:= s.x (sub1 s.x)))
    )
)

(define (draw)
  (update-state)
  (rect (state-x s) 45 50 50)
  )
  