;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.11
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (g n)
  (define (iter f1 f2 f3 t)
    (if (= t n)
        f1
        (iter
         (+ f1 (* 2 f2) (* 3 f3))
         f1
         f2
         (+ t 1)
         )))
  (if (< n 3)
      n
      (iter 2 1 0 2)))
;test
(f 2)
(f 3)
(f 10)
(f 20)
(f 30)

(g 2)
(g 3)
(g 10)
(g 20)
(g 30)
         
