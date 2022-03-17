#lang sketching

(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (background 200)
  (set-frame-rate! 60)
  )

(struct state (x offset))
(define s (state (/ width 2) 10))

(define (update-state)
  (let* ([x      (state-x s)]
         [x      (if (> mouse-x x) (+ x 0.5) (- x 0.5))]
         [offset (if (> mouse-x x) -10 10)]
        )
       (set! s (state x offset) )
      )
  )

(define (draw)
   (update-state)
   (background 204)
   (line (state-x s) 0(state-x s) height)
   (line  mouse-x mouse-y (+ mouse-x (state-offset s)) (- mouse-y 10))
   (line  mouse-x mouse-y (+ mouse-x (state-offset s)) (+ mouse-y 10))
   (line  mouse-x mouse-y (+ mouse-x (* (state-offset s) 3)) mouse-y)
  )

