;
(define sqrt-5 2.236067977499789696409173668731276)

(define psi (/ (- 1.0 sqrt-5) 2.0))

(define phi (/ (+ 1.0 sqrt-5) 2.0))


(define (fib n)
  (if (< n 3) 1 (+ (fib (- n 2)) (fib (- n 1)))
      )
  )

(define (power x n t)
  (if (= n 0) t (power x (- n 1) (* t x)))
  )

(define (check n)
  (display "\n")
  (display (/ (- (power phi n 1) (power psi n 1)) sqrt-5))
  (display "\n")
  (display (fib n))
  )

(check 16)