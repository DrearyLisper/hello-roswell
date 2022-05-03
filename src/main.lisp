(defpackage :hello-roswell
  (:use :cl)
  (:export :main))

(in-package :hello-roswell)

(defun main (&rest argv)
  (declare (ignorable argv))
  (print "Hello, Roswell!"))
