;; Auto-generated. Do not edit!


(when (boundp 'godelbot::set_camera_mode)
  (if (not (find-package "GODELBOT"))
    (make-package "GODELBOT"))
  (shadow 'set_camera_mode (find-package "GODELBOT")))
(unless (find-package "GODELBOT::SET_CAMERA_MODE")
  (make-package "GODELBOT::SET_CAMERA_MODE"))
(unless (find-package "GODELBOT::SET_CAMERA_MODEREQUEST")
  (make-package "GODELBOT::SET_CAMERA_MODEREQUEST"))
(unless (find-package "GODELBOT::SET_CAMERA_MODERESPONSE")
  (make-package "GODELBOT::SET_CAMERA_MODERESPONSE"))

(in-package "ROS")





(defclass godelbot::set_camera_modeRequest
  :super ros::object
  :slots (_mode ))

(defmethod godelbot::set_camera_modeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass godelbot::set_camera_modeResponse
  :super ros::object
  :slots (_success ))

(defmethod godelbot::set_camera_modeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass godelbot::set_camera_mode
  :super ros::object
  :slots ())

(setf (get godelbot::set_camera_mode :md5sum-) "cd2737036405069bf2d76a05df1c316d")
(setf (get godelbot::set_camera_mode :datatype-) "godelbot/set_camera_mode")
(setf (get godelbot::set_camera_mode :request) godelbot::set_camera_modeRequest)
(setf (get godelbot::set_camera_mode :response) godelbot::set_camera_modeResponse)

(defmethod godelbot::set_camera_modeRequest
  (:response () (instance godelbot::set_camera_modeResponse :init)))

(setf (get godelbot::set_camera_modeRequest :md5sum-) "cd2737036405069bf2d76a05df1c316d")
(setf (get godelbot::set_camera_modeRequest :datatype-) "godelbot/set_camera_modeRequest")
(setf (get godelbot::set_camera_modeRequest :definition-)
      "


uint8 mode
---
bool success

")

(setf (get godelbot::set_camera_modeResponse :md5sum-) "cd2737036405069bf2d76a05df1c316d")
(setf (get godelbot::set_camera_modeResponse :datatype-) "godelbot/set_camera_modeResponse")
(setf (get godelbot::set_camera_modeResponse :definition-)
      "


uint8 mode
---
bool success

")



(provide :godelbot/set_camera_mode "cd2737036405069bf2d76a05df1c316d")


