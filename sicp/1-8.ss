;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.8
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve y x)
  (/ (+ (/ x y y) (* 2 y)) 3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* .00000001 guess)))

(define (cube-root x)
  (sqrt-iter 1.0 x))

;test
(cube-root 27)
(cube-root 10000000000)
(cube-root 0.00000001)
