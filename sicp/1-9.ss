;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.9

(define (inc a)
  (+ a 1))
(define (dec a)
  (- a 1))

(define (plus1 a b)
  (if (= a 0)
      b
      (inc (plus1 (dec a) b))))
;recursive
;test
(plus1 4 5)
;->(inc (+ 3 5))
;->(inc (inc (+ 2 5)))
;->(inc (inc (inc (+ 1 5))))
;->(inc (inc (inc (inc 5))))
;->(inc (inc (inc 6)))
;->(inc (inc 7))
;->(inc 8)
;->9

(define (plus2 a b)
  (if (= a 0)
      b
      (plus2 (dec a) (inc b))))
;iterative 
;test
(plus2 4 5)
;->(+ 3 6)
;->(+ 2 7)
;->(+ 1 8)
;->(+ 0 9)
;->9
