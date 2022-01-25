#lang sketching
(define (setup)
  (size 720 480)
  (smoothing 'smoothed)
  (background 200)
  (no-loop)
  )

(define (draw)
    (stroke-weight 2)
    (background 0 153 204)
    (ellipse-mode 'radius)
   
    ;;Neck
    (stroke 255) ;;Set stroke to white
    (line 266 257 266 162) ;;Left
    (line 276 257 276 162) ;;Middle
    (line 286 257 286 162);;RIGHT
    
    ;;ANTENNAE
    (line 270 155 246 112);;SMALL
    (line 276 155 306 56);;TALL
    (line 276 155 342 170);;MEDIUM
     
     ;;BODY
    (no-stroke);;Disable Stroke
    (fill 255 204 0);;set fill to orange
    (ellipse 264 377 33 33);;antigravity orb
    (fill 0);;Set fill to black
     
    (rect 219 257 90 120);;Main Body
    (fill 255 204 0);;set fill to yellow
    (rect 219 274 90 6);;Yellow Stripe
    
    ;;Head
    (fill 0);;Set fill to black
    (ellipse 276 155 45 45);;Head
    (fill 255);;Set fill to white
    (ellipse 288 150 14 14);;Large Eye
    (fill 0);; Set fill to black
    (ellipse 288 150 3 3);; Pupil
    (fill 153 204 255);; set fill to light blue
    (ellipse 263 148 5 5);; small eye 1
    (ellipse 296 130 4 4);;small eye 2
    (ellipse 305 162 3 3);;small eye 3
  )

  
