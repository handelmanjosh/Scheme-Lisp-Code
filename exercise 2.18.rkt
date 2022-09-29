

(define (reverse-list l1)
  
  (define (rev list1 list2)
    (define (final a l)
      (append (list a) l)
    )
    (if (null? (cdr list1)) (final (car list1) list2) (rev (cdr list1) (append (list (car list1)) list2)))
  )
  
  (rev l1 '())
  )

(reverse-list (list 1 2 3 4 5 6 7 8 9))

