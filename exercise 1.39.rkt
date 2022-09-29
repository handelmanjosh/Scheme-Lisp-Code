(define (tan-cf x k)
  (/ x (continuous (* x x) 1 k 0))
  )

(define (continuous x n k i)
  (if (> i k) 1 (- n (/ x (continuous x (+ n 2) k (+ i 1)))))
  )

(tan-cf 2.0 1000)