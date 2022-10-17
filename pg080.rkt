;;as of Oct 17, 2022, Sketching has an issue rotating before translating

#lang sketching
(define (setup)
  (size 240 240)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )

(struct state (angle))
(define s (state 0.0))

(define (update-state)
  (:= s.angle (+ 0.1 s.angle))
  )

(define (draw)
  (rotate s.angle)
  (translate mouse-x mouse-y)
  (rect -15 -15 30 30)
  (update-state)
  )
  