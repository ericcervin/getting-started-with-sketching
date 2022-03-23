#lang sketching

(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  )

(define x 80)
(define y 30)
(define w 80)
(define h 60)

(define (draw)
  (background 204)
  (if (and (> mouse-x x) (< mouse-x (+ x w)) (> mouse-y y) (< mouse-y (+ y h)))  
      (fill 0)
      (fill 255))
  (rect x y w h)
  )
  
