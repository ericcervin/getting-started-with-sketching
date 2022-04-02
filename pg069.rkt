#lang sketching
(define (setup)
  (size 120 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)
  )

(define (draw)
  (background 204)
  (when key-pressed
    (when  (or (equal? key #\h) (equal? key #\H)) (line 30 60 90 60))
    (when  (or (equal? key #\n) (equal? key #\N)) (line 30 20 90 100))
    )
  (line 30 20 30 100)
  (line 90 20 90 100)
  ) 
  