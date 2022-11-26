#lang sketching
;minimum frame-rate is 1 so can't do 0.5 example
(define (setup)
  ;(set-frame-rate! 30);Thirty frames each second
  ;(set-frame-rate! 12);Twelve frames each second
  ;(set-frame-rate! 2);Two frames each second
  (set-frame-rate! 1); One frame every second
  )


(define (draw)
 (println frame-rate)
  )


