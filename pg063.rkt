#lang sketching

(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (background 200)
  (set-frame-rate! 60)

  (ellipse-mode 'radius)
  )

(struct state (x y radius fill))
(define s (state 120 60 12 255))

(define (update-state)
  (let* ([x      (state-x s)]
         [y      (state-y s)]
         [d (dist mouse-x mouse-y x y)]
         [r (state-radius s)]
        )
        (if (< d r)
            (set! s (state x y (add1 r) 0))
            (set! s (state x y r      255))
        )
  )
)

(define (draw)
  (update-state)
  (background 204)
  (fill (state-fill s))
  (ellipse (state-x s) (state-y s) (state-radius s) (state-radius s)))
  
