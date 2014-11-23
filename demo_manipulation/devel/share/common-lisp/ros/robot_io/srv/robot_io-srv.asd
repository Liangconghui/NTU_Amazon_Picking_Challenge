
(cl:in-package :asdf)

(defsystem "robot_io-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DigitalOutputUpdate" :depends-on ("_package_DigitalOutputUpdate"))
    (:file "_package_DigitalOutputUpdate" :depends-on ("_package"))
  ))