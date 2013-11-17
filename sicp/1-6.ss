;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.6
;will get infinite loops

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (f) (display 1))
(define (g) (display 2))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x) x)))
(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

;test 1
(if (= 1 1) (f) (g))
(display "\n")
(new-if (= 1 1) (f) (g))
(display "\n")
;test 2
(sqrt 2)
(new-sqrt 2)
