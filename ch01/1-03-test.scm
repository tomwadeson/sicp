(load "test-manager/load.scm")
(load "ch01/1-03.scm")

(define-test (ch01-03)
  "Exercise 1.3"
  (assert-=
    13
    (sum-of-squares-of-two-largest 1 2 3))

  (assert-=
    13
    (sum-of-squares-of-two-largest 3 2 1))

  (assert-=
    500
    (sum-of-squares-of-two-largest 10 3 20)))

(run-registered-tests)
