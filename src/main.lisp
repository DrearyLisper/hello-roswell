(defpackage #:hello-roswell/main
  (:use :cl)
  (:export :main))

(in-package #:hello-roswell/main)

(defun main (&rest argv)
  (declare (ignorable argv))
  (print "Hello, Roswell!"))
