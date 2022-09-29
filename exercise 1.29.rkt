;

(define (cube x) (* x x x))

(define (int-calc f a k n h)
  (if (or (> k n) (= k n))
      (f (+ a (* n h)))
      (+ (* 4 (f (+ a (* k h)))) (* 2 (f (+ a (* (+ k 1) h)))) (int-calc f a (+ 2 k) n h)))
  )

(define (integral f a b n)
  (define h (/ (- b a) n))
  (* (/ h 3) (+ (f a) (int-calc f a 1 n h)))
  )

(integral cube 0 1 1000.0)
