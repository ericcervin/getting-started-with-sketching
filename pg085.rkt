#lang sketching

(define easing 0.04)

(struct bot (x y radius body-height neck-height))
(define b (bot 60 440 45 160 70))


(define (setup)
  (size 360 480)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  (background 200)
  (ellipse-mode 'radius)
  )


(define (draw) 
  (stroke-weight 2)
  (define neck-y (* -1 (+ b.body-height b.neck-height b.radius)))
  (background 0 153 204)
  (translate mouse-x b.y)
  (if mouse-pressed (scale 1.0) (scale 0.6))

  ;BODY
  (no-stroke)
  (fill 255 204 0) 
  (ellipse 0 -33  33  33)
  (fill 0)
  (rect -45 (* -1 b.body-height) 90 (- b.body-height 33))

  ;Neck
  (stroke 255)
  (line 12 (* -1 b.body-height) 12 neck-y)

  ;Hair
  (push-matrix)
  (translate 12 neck-y)
  (define angle (* -1 (/ pi 30.0)))
  (for ([i (in-range 0 30 1)])
   (line 80 0 0 0)
   (rotate angle)
   )
  (pop-matrix)

  ;Head
  (no-stroke)
  (fill 0)
  (ellipse 12 neck-y b.radius b.radius)
  (fill 255)
  (ellipse 24 (- neck-y 6) 14 14)
  (fill 0)
  (ellipse 24 (- neck-y 6) 3 3)
  )
  