(define (make-mobile left right)
  (list left right)
  )
(define (make-branch length structure)
  (list length structure)
  )
(define (left-branch mobile)
  (car mobile)
  )
(define (right-branch mobile)
  (car (cdr mobile))
  )
(define (length-branch branch)
  (car branch)
  )
(define (structure branch)
  (car (cdr branch))
  )
(define (total-weight mobile)
  (+ (weight (left-branch mobile)) (weight (right-branch mobile))) 
  )
(define (weight branch)
  (if (null? (cdr branch)) 0
      (if (list? (structure branch)) (* (length-branch branch) (total-weight (structure branch))) (* (length-branch branch) (structure branch)))
    )
  )
(define b1 (make-branch 6 7))
(define b2 (make-branch 5 6))
(define m1 (make-mobile b1 b2))




(total-weight m1)



