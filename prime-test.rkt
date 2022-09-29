;basically this is a list of all primes 0 through n. THEOREM: Given a list of proven primes of length n, prime n + 1 can be found if none of the primes in the list are factors
;This is because each prime is in effect a completely new number
(define (final n i prime-list)
  (prime-test n (+ i 2) (append (list i) prime-list))
  )
(define (check? n index)
  (if (null? index) #t
      (if (= 0 (remainder n (car index))) #f (check? n (cdr index))))
  )
(define (prime-test n i prime-list)
  (if (> i n) prime-list
      (if (check? i prime-list) (final n i prime-list) (prime-test n (+ i 2) prime-list)))
  )

(prime-test 100000 3 (list 2))