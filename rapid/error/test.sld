(define-library (rapid error)
  (import (scheme base)
          (scheme write)
          (rapid test)
          (rapid read)
          (rapid error))
  (export run-tests)
  (begin
    (define (string->syntax string)
      (define port (open-input-string string))
      (read-syntax (make-source-port port #f #f) #f))

    (define (run-tests)

      (test-begin "Compiler Error")

      (test-assert "Raising an error raises an exception"
     	           (guard (condition
	    	           ((compile-error-object? condition) #t))
		          (compile-error "error" (string->syntax "error"))
		          #f))

      (test-end "Compiler Error")

      #t)))

