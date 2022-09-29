(define (smallest-divisor n d)
  (if (integer? (/ n d)) d (smallest-divisor n (+ d 1)))
  )

(define (prime? n)
  (if (= n (smallest-divisor n 2))
     (prime-display n) #f)
  )

(prime? 19999)