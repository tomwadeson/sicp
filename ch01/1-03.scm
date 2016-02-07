(define (sum-of-squares-of-two-largest x y z)

  (define (minimum x y z)
    (cond ((and (<= x y) (<= x z)) x)
          ((and (<= y x) (<= y z)) y)
          (else z)))

  (define (sum-of-squares x y)
    (+ (* x x) (* y y)))

  (cond ((= x (minimum x y z)) (sum-of-squares y z))
        ((= y (minimum x y z)) (sum-of-squares x z))
        (else                  (sum-of-squares x y))))
