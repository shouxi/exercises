;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.5
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))
; Infinite loops for applicative-order evaluation, as (p) is infinte loops.
; 0 for normal-order evaluation
