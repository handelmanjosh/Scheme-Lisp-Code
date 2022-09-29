(define (fringe x)
  (if (null? x) '() 
      (if (list? (car x)) (append (fringe (car x)) (fringe (cdr x))) (append (list (car x)) (fringe (cdr x))))
    )
  )



(define x (list 1 2 3 4))
(define y (list 5 6 7 8))
(define z (list x y))
(define zz (list z y))

(fringe (list x y z zz))





