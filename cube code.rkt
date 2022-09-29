;(x/y^2  +  2y)/3
;if y is an approximation, a better one is given by the above equation

(define (cube a)
  (* a a a)
  )
(define (check-guess guess number)
  (if ( < (abs (- (cube guess) number)) .0001)
  #t
  #f)
  )

(define (new-guess y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3)
  )

(define (iter-cube guess number)
  (if (check-guess guess number)
       guess
      (iter-cube (new-guess guess number) number))
  )
(define (init guess number)
  (iter-cube guess number)
  )

(init 1.0 216.0)

(cube (init 1.0 100.0))
