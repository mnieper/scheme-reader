;;; Rapid Scheme --- A R7RS compatible reader with source locations

;; Copyright (C) 2016 Marc Nieper-Wißkirchen

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-library (rapid read)
  (export make-source-port
	  source-port?
	  read-error-object?
	  read-error-object-message
	  read-error-object-location
	  read-syntax
	  locate-file
	  read-file
	  source-location-source
	  source-location-start-line
	  source-location-start-column
	  source-location-end-line
	  source-location-end-column)
  (import (scheme base)
	  (scheme char)
	  (scheme case-lambda)
	  (scheme file)
	  (rapid comparators)
	  (rapid generators)
	  (rapid tables)
	  (rapid paths)
	  (rename (rapid syntax) (make-syntax syntax-make-syntax)))
  (include "read.scm"))
