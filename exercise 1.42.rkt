(define (compose f g)
  (lambda (x) (f (g x)))
  )

(define (square x)
  (* x x)
  )

(define (inc x)
  (+ 1 x)
  )

(square (inc 6))
((compose square inc) 6)