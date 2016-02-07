(define (square x)
  (* x x))

(define (sqrt x)

  (define (good-enough? guess old-guess)
    (< (abs (- guess old-guess))
       (* guess 0.0000001)))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))

  (define (sqrt-iter guess old-guess)
    (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess) guess)))

  (sqrt-iter 1.0 2.0))
