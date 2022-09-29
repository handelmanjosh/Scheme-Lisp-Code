
(define (average v1 v2)
  (/ (+ v1 v2) 2)
  )
(define (average-damp f)
  (lambda (x) (average x (f x)))
  )


((average-damp (lambda (x) (* x x))) 10)