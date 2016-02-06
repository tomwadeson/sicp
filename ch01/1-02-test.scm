(load "test-manager/load.scm")

(define-test (ch01-02)
  "Exercise 1.2"

  ; 5 + 4 + (2 - (3 - (6 + 4/5)))
  ; ----------------------------- = -0.24667
  ;     3 * (6 - 2) * (2 - 7)

  (assert-in-delta
    -0.246667
    (/
      (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
      (* 3 (- 6 2) (- 2 7)))
    0.00001))
  

(run-registered-tests)
