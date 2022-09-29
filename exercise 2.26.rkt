;find prime sums up to a number
 (define (iter-1 current delta end v)
    (if (> current end) v (iter-1 (+ delta current) delta end (append (list current) v)))
    )
(define (match-1 n l)
  (if (null? l) '() (cons (cons n (car l)) (match-1 n (cdr l))))
  )
(define (organize l1 l2)
  (if (null? l1) '() (cons (match-1 (car l1) l2) (organize (cdr l1) l2)))
  )
(define primes-list (list 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163))
;basically this is a list of all primes 0 through n. THEOREM: Given a list of proven primes of length n, prime n + 1 can be found if none of the primes in the list are factors
;This is because each prime is in effect a completely new number
(define (prime? number i)
  (if (>= i number) #t #f) 
  )
(define (check? numbers)
  (let ((n1 (car numbers)) (n2 (cdr numbers)))
    (if (prime? (+ n1 n2) 3) #t #f))
  )
(define (check-sums ll1 f)
  (if (null? ll1) '()
      (if (check? (car ll1)) (check-sums (cdr ll1) (append (car ll1) f)) (check-sums (cdr ll1) f)))
  )
(define (check-prime l1 i length f)
  (if (< i length) (check-prime (cdr l1) (+ i 1) length (append (check-sums (car l1) '()) f)) f)
  )
(define (prime-sums n)
  (let ((evens (iter-1 4 2 n (list 2)))
       (odds (iter-1 3 2 n (list 1))))
       (let ((list-1 (organize evens odds))) (check-prime list-1 0 (length list-1)'()))
    )
  )


(prime-sums 10)



