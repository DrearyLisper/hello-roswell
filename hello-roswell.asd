(defsystem "hello-roswell"
  :build-operation program-op
  :build-pathname "hello-roswell"
  :entry-point "hello-roswell:main"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "hello-roswell/tests"))))

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
