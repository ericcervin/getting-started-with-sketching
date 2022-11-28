#lang sketching
(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (ellipse-mode 'radius)
  )


(define radius 40)
(define speed 0.5)

(struct state (x))
(define s (state (* -1 radius)))

(define (update-state)
  (+= s.x speed)
)

(define (draw)
  (update-state)
  (background 0)
  (arc s.x 60 radius radius 0.52 5.76)
  )
