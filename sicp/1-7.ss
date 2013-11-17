;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.7
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* .00000001 guess)))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;test
(sqrt 10000000000)
(sqrt 0.00000001)
