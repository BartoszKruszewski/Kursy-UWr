#lang racket

(define-struct matrix (a b c d))

(define (matrix-mult m n)
  (matrix
   (+ (* (matrix-a m) (matrix-a n)) (* (matrix-b m) (matrix-c n)))
   (+ (* (matrix-a m) (matrix-b n)) (* (matrix-b m) (matrix-d n)))
   (+ (* (matrix-c m) (matrix-a n)) (* (matrix-d m) (matrix-c n)))
   (+ (* (matrix-c m) (matrix-b n)) (* (matrix-d m) (matrix-d n)))
  ))


(define (matrix-id) (matrix 1 0 1 0))

(define (matrix-expt m k)
  (define (it n acc)
    (if (= n 1)
        acc
        (it (- n 1) (matrix-mult acc m))))
  (it k m))

(define (matrix-expt-fast m k)
  (if (= (modulo k 2) 0)
      (matrix-expt (matrix-expt-fast m (quotient k 2)) 2)
      (matrix-mult (matrix-expt m (- k 1)) m)))
      

(define (fib-matrix k)
  (matrix-expt (matrix 1 1 1 0) k))

(define (fib-fast k)
  (matrix-expt-fast (matrix 1 1 1 0) k))
                      


(define a (matrix 1 3 2 0))

(define m (matrix 2 5 1 -2))
(define n (matrix 3 -1 7 4))

;(define x (matrix-mult m n))
;(matrix-a x)
;(matrix-b x)
;(matrix-c x)
;(matrix-d x)

(define y (matrix-expt-fast a (* 764)))
(matrix-a y)
(matrix-b y)
(matrix-c y)
(matrix-d y)

;(define z (fib-fast 1000000))
;(matrix-a z)
;(matrix-b z)
;(matrix-c z)
;(matrix-d z)



 