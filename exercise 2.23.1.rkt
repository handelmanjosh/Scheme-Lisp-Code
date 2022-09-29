(define (count-leaves x)
  (if (null? x) 0 (if (list? x) (+ (count-leaves (car x)) (count-leaves (cdr x))) 1))
  )

(define x (list 1 2 3 4))

(define list2 (list x x))
(define list3 (list list2 list2))

(count-leaves list2)
(count-leaves list3)