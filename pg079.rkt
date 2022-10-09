#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )

(struct state (angle))
(define s (state 0))

(define (update-state)
  (:= s.angle (+ 0.1 s.angle))
  )

(define (draw)
  (translate mouse-x mouse-y)
  (rotate s.angle)
  (rect -15 -15 30 30)
  (update-state)
  )
  