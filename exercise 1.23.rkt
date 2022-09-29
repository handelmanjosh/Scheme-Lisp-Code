(define (smallest-divisor n d)
  (define (next n)
    (if (= 2 n) 3 (+ n 2))
    )
  (if (integer? (/ n d)) d (smallest-divisor n (next d)))
  )

(define (prime? n)
  (if (= n (smallest-divisor n 2))
     #t #f)
  )

(prime? 203)