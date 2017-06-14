
(cl:in-package :asdf)

(defsystem "godelbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "set_camera_mode" :depends-on ("_package_set_camera_mode"))
    (:file "_package_set_camera_mode" :depends-on ("_package"))
  ))