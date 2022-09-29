
(define (new-vector . n)
  n
  )

(define (new-matrix . vectors)
  vectors
  )

(define v1 (new-vector 1 2 3 4))
(define v2 (new-vector 5 6 7 8))
(define v3 (new-vector 9 10 11 12))
(define m1 (new-matrix v1 v2 v3))

(display m1)

