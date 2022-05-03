(defsystem "hello-roswell"
  :class :package-inferred-system
  :version "0.1.0"
  :author ""
  :license ""
  :pathname "src"
  :description ""
  :depends-on ("hello-roswell/main")
  :in-order-to ((test-op (test-op "hello-roswell/tests"))))

(defsystem "hello-roswell/command"
  :depends-on ("hello-roswell/main")
  :build-operation "program-op"
  :build-pathname "hello-roswell"
  :entry-point "hello-roswell:main")

(defsystem "hello-roswell/tests"
  :author ""
  :license ""
  :depends-on ("hello-roswell"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for hello-roswell"
  :perform (test-op (op c) (symbol-call :rove :run c)))
