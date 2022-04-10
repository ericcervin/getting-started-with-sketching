#lang sketching
(define (setup)
  (size 240 120)
  (smoothing 'smoothed)
  (set-frame-rate! 60)

  (stroke-weight 12)
  )


(define (draw)
    (background 204)
    (stroke 102)
    (line mouse-x 0 mouse-x height);;Gray line;
    (stroke 0)
    (define mx (+ 60 (/ mouse-x 2)))
    (line mx 0 mx (height)) ;;Black line
  )

#|
        
                                
(defn draw [state]
  (let [mx (+ 60 (/ (q/mouse-x) 2))]
    (q/background 204)
    (q/stroke 102)
    (q/line (q/mouse-x) 0 (q/mouse-x) (q/height));;Grayline;
    (q/stroke 0)
    (q/line mx 0 mx (q/height))));;Blackline
  
    
|#