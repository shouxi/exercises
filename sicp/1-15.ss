;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.15
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))
;test
;(sine a)
;a/3**n = a/0.1 = 10a
;n = log_3^10a = log_3^10 + log_3^a
(sine 12.15)
