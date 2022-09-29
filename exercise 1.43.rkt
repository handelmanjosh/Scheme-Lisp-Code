(define (compose f g)
  (lambda (x) (f (g x)))
  )

(define (repeat f h n i)
  (if (= i n) h (repeat f (compose f h) n (+ i 1)))
  )

(define (repeated f n)
  (repeat f f n 1)
  )

(define (square x)
  (* x x)
  )

(define (add x)
  (+ x 1)
  )

((repeated square 2) 5)