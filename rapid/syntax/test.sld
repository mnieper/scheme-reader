(define-library (rapid syntax test)
  (export run-tests)
  (import (scheme base)
	  (rapid test)
	  (rapid syntax))
  (begin
    (define (run-tests)
    
      (test-begin "Syntax")

      ;; TODO
      
      (test-end "Syntax")

      #t)))
