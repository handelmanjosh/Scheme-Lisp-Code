(define (euler k)
  (/ 1 (continuous 1.0 1.0  (+ k 2) new-n new-d 2))
  )

(define (new-n n)
  1
  )
(define (new-d d c)
  (if (= 0 (remainder c 3)) (* 2 (/ c 3)) 1)
  )
(define (new-d-2 d c)
  1
  )

(define (continuous n d k new-n new-d c)
  (if (> c k) 1 (+ d (/ n (continuous (new-n n) (new-d d c) k new-n new-d (+ c 1)))))
  )

(euler 2000)