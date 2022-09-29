(define (fib-linear total count)
  (if (= count 0) total
      (fib-linear (* total count) (- count 1)))
  )

(define (fib number)
  (if (= number 0) 1 (* number (fib (- number 1)))
  ))

(define num 8)

(fib-linear 1 num)
(fib num)

