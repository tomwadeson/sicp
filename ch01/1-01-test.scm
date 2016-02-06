(load "test-manager/load.scm")

(define-test (ch01-01)
  "Exercise 1.1"
  (check (= 10 10))

  (check (= 12 (+ 5 3 4)))

  (check (= 8 (- 9 1)))

  (check (= 3 (/ 6 2)))

  (check (= 6 (+ (* 2 4) (- 4 6))))

  (define a 3)
  (define b (+ a 1))

  (check (= 19 (+ a b (* a b))))

  (assert-false (= a b))
  
  (check (=
    a
    (if (and (> b a) (< b (* a b)))
      a
      b)))

  (check (=
    16
    (cond ((= a 4) 6)
          ((= b 4) (+ 6 7 a)) ; 16
          (else 25))))

  (assert-=
    6
    (+ 2 (if (> b a) b a)))

  (assert-=
    16
    (* (cond ((> a b) a)
             ((< a b) b)
             (else -1))
       (+ a 1))))

(run-registered-tests)
