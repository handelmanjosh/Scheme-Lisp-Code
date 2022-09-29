(define (product a b) (* a b))

(define (fact-product f n)
  (if (= n 0)
      1
      (f n (fact-product f (- n 1))))
  )

(define (pi-product a b i n)
  (cond ((> i n) 1)
        ((> a b) (product (/ a b) (pi-product a (+ b 2) (+ i 1) n)))
        (else (product (/ a b) (pi-product (+ a 2) b (+ i 1) n)))
    ) 
  )

(define (pi-iter a b i n t)
  (cond ((> i n) t)
        ((> a b) (pi-iter a (+ b 2) (+ i 1) n (product t (/ a b))))
        (else (pi-iter (+ a 2) b (+ i 1) n (product t (/ a b))))
    )
  )
(pi-product 2.0 3.0 0 1000)
(pi-iter 2.0 3.0 0 1000 1)