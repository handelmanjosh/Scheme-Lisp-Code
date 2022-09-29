

(define (determine result key v)
  (if (null? v) result
      (if (= (remainder (car v) 2) (remainder key 2)) (determine (append (list (car v)) result) key (cdr v)) (determine result key (cdr v)))
      )
  )

(define (same-parity key . v)
  (determine '() key v)
  )

(same-parity 2 2 3 4 5 6 7)

