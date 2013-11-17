;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.3
(define (f a b c)
  (define (min a b)
    (if (< a b) a b))
  (- (+ a b c) (min (min a b) c)))

(f 3 1 2)
(f 2 3 1)
