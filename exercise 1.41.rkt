(define (double procedure)
  (lambda (x) (procedure (procedure x)))
  )

(define (inc value)
  (+ 1 value)
  )


((double inc) 4)
(((double (double double)) inc) 5)
