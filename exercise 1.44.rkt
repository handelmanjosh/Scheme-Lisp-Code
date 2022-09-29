
(define (square x)
  (* x x)
  )

(define (three-average x1 x2 x3)
  (/ (+ x1 x2 x3) 3)
  )


(define (smooth f delta)
  (lambda (x) (three-average (f x) (f (+ x delta)) (f (- x delta))))
  )

((smooth square 0.00000000000001) 6)