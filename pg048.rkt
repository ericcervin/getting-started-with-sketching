#lang sketching
(define (setup)
  (size 170 480)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
  (let* (
      [x  60]
      [y  390]
      [body-height 180]
      [neck-height 45]
      [radius 45]
      [ny  (- y body-height neck-height radius)]
      )
   
    (stroke-weight 2)
    (background 0 153 204)
    (ellipse-mode 'radius)
      
    ;;neck
    (stroke 255)
    (line (+ x 2)  (- y body-height) (+ x 2) ny);;Left
    (line (+ x 12) (- y body-height) (+ x 12) ny);;Middle
    (line (+ x 22) (- y body-height) (+ x 22) ny);;Right
    
    ;;ANTENNAE
    (line (+ x 2) ny (- x 18) (- ny 43));;SMALL
    (line (+ x 12) ny (+ x 42) (- ny 99));;TALL
    (line (+ x 22) ny (+ x 78) (+ ny 15));;MEDIUM

   
    ;;BODY
    (no-stroke)
    (fill 255 204 0)
    (ellipse x (- y 33) 33 33);;antigravity orb
    (fill 0)
    (rect (- x 45) (- y body-height) 90 (- body-height 33));;Main Body
    (fill 255 204 0)
    (rect (- x 45) (+ (- y body-height) 17) 90 6)
    
      
     ;;Head
    (fill 0);
    (ellipse (+ x 12) ny radius radius)
    (fill 255)
    (ellipse (+ x 24) (- ny 6) 14 14);;Large Eye
    (fill 0)
    (ellipse (+ x 24) (- ny 6) 3 3);;Pupil
    (fill 153 204 255)
    (ellipse x (- ny 8) 5 5);;small eye 1
    (ellipse (+ x 30) (- ny 26) 4 4);;small eye 2
    (ellipse (+ x 41) (+ ny 6) 3 3);;small eye 3
  )
)

  
