(define (square n)
  (* n n))

(define (exp-2 b n)
  (if (= n 0) 1 (* b (exp-2 b (- n 1))))
  )

(define (exponent a b n)
  (display (* a (exp-2 b n)))
  (display "\n")
  (cond ((= n 0) 1)
        ((even? n) (square (exponent (exp-2 a (* n 2)) b (/ n 2))))
        (else (* b (exponent (exp-2 a (+ n 1) ) b (- n 1))))
        )
  )

(define (exp-1 a b n)
  (define original (exp-2 b n))
  (/ )
  )

(exponent 1.0 4 4)
