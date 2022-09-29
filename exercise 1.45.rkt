(define (iterative-improve guess check? iter)
  (if (check? guess)
      guess
      (iterative-improve (iter guess) check? iter))
  )


