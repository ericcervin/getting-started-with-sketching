#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  )


(define speed 0.005)

(struct state (angle angle-direction))
(define s (state 0.0 1))

(define (update-state)
  (:= s.angle (+ s.angle (* s.angle-direction speed)))
  (when (or (> s.angle pi/4)(< s.angle 0)) (:= s.angle-direction (* -1 s.angle-direction)))
  )

(define (draw)
  (background 204)
  (translate 20 25) ;;move to start position
  (rotate s.angle)
  (stroke-weight 12)
  (line 0 0 40 0)
  (translate 40 0) ;; move to next joint
  (rotate (* s.angle 2.0))
  (stroke-weight 6)
  (line 0 0 30 0)
  (translate 30 0);; move to next joint
  (rotate (* s.angle 2.5))
  (stroke-weight 3)
  (line 0 0 20 0)
  (update-state)
  )
  