(define x (list 1 2 (list 4 3)))
(define y (list 5 6 7 8))
(define x2 (list x y))


(define (deep-reverse l1 result)
  (if (null? l1) result
      (if (not (list? l1)) l1 (deep-reverse (cdr l1) (append (list (deep-reverse (car l1) '())) result)))
      )
  )

;compiler is not broken i am in unimaginable pain

(deep-reverse x2 '())
