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
    (when  (equal? key 'right)   (set! s (state (add1 (state-x s)))))
    (when  (equal? key 'left)    (set! s (state (sub1 (state-x s)))))
    )
)

(define (draw)
  (update-state)
  (rect (state-x s) 45 50 50)
  )
  