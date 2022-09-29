(define (last-pair x)
  (if (null? (cdr x)) (car x) (last-pair (cdr x)))
  )

(last-pair (list 4 5 6 7))