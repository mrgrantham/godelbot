
(cl:in-package :asdf)

(defsystem "godelbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "camera_status" :depends-on ("_package_camera_status"))
    (:file "_package_camera_status" :depends-on ("_package"))
    (:file "drive_param" :depends-on ("_package_drive_param"))
    (:file "_package_drive_param" :depends-on ("_package"))
  ))