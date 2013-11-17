;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.10
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
(A 1 10)
;1024
(A 2 4)
;65536
(A 3 3)
;65536
(display "\n")
(define (f n) (A 0 n))
;2n
;test
(f 1)
(f 10)
(f 100)

(define (g n) (A 1 n))
;2**n for n >= 1; else 0 for n = 0
;test
(g 1)
(g 3)
(g 10)

(define (h n) (A 2 n))
;h(n)=2**h(n-1)
;h(n)=2**2**2**2....
;test
(h 1)
(h 2)
(h 3)
(h 4)
