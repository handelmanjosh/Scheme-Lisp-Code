(define (cont-frac k)
  (define (compute n d k i)
    (if (> i k) 1 (+ d (/ n (compute n d k (+ i 1)))))
    )
  (+ -1 (compute 1.0 1.0 k 0))
  )

(cont-frac 100000)