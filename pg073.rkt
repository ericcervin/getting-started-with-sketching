#lang sketching
(define (setup)
  (size 360 480)
  (smoothing 'smoothed)
  (set-frame-rate! 60)

  (ellipse-mode 'radius)
  )

(struct state (x y body-height neck-height radius neck-y))

(define s (state 60 440 160 70 45 165))

(define easing 0.04)

(define (update-state)
  (define x (+ s.x (* (- mouse-x s.x) easing)))
  (:= s.x x)
  (define neck-height (if mouse-pressed 16 70))
  (:= s.neck-height neck-height)
  (define body-height (if mouse-pressed 90 160))
  (:= s.body-height body-height)
  (define neck-y (- s.y body-height neck-height s.radius))
  (:= s.neck-y neck-y)
  )

(define (draw)
   (update-state)
   (stroke-weight 2)
   (background 0 153 204)
  
   ;;Neck
   (stroke 255)
   (line (+ s.x 12) (- s.y s.body-height) (+ s.x 12) s.neck-y)

   ;;ANTENNAE
   (line (+ s.x 12) s.neck-y (- s.x 18) (- s.neck-y 43));; SMALL
   (line (+ s.x 12) s.neck-y (+ s.x 42) (- s.neck-y 99));; TALL
   (line (+ s.x 22) s.neck-y (+ s.x 78) (+ s.neck-y 15));; BODY

   ;;BODY
   (no-stroke)
   (fill 255 204 0) 
   (ellipse s.x (- s.y 33) 33 33)
   (fill 0)
   (rect (- s.x 45) (- s.y s.body-height) 90 (- s.body-height 33))

   ;;HEAD
   (fill 0)
   (ellipse (+ s.x 12) s.neck-y s.radius s.radius)
   (fill 255)
   (ellipse (+ s.x 24) (- s.neck-y 6) 14 14)
   (fill 0)
   (ellipse (+ s.x 24) (- s.neck-y 6) 3 3)
  )
  