(define (foreach procedure args)
  (define (result procedure args)
    (display (procedure (car args)))
    (newline)
    (foreach procedure (cdr args))
    )
  (if (null? args) "done" (result procedure args))
  )

(define (cube x) (* x x x))
(foreach (lambda (x) (+ 2 (* x 4))) (list 1 2 3 4))

