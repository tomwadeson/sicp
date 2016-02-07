(load "test-manager/load.scm")
(load "ch01/1-07.scm")

(define-test (ch01-07)
  "Exercise 1.7"

  (define precision 0.000001)

  (assert-in-delta
    (square (sqrt 10))
    10
    precision)

  (assert-in-delta
    (square (sqrt 1000000000000))
    1000000000000
    precision)

  (assert-in-delta
    (square (sqrt 0.00000000001))
    0.00000000001
    precision))

(run-registered-tests)
