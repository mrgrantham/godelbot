;; Auto-generated. Do not edit!


(when (boundp 'godelbot::camera_status)
  (if (not (find-package "GODELBOT"))
    (make-package "GODELBOT"))
  (shadow 'camera_status (find-package "GODELBOT")))
(unless (find-package "GODELBOT::CAMERA_STATUS")
  (make-package "GODELBOT::CAMERA_STATUS"))

(in-package "ROS")
;;//! \htmlinclude camera_status.msg.html


(defclass godelbot::camera_status
  :super ros::object
  :slots (_cam_status ))

(defmethod godelbot::camera_status
  (:init
   (&key
    ((:cam_status __cam_status) 0)
    )
   (send-super :init)
   (setq _cam_status (round __cam_status))
   self)
  (:cam_status
   (&optional __cam_status)
   (if __cam_status (setq _cam_status __cam_status)) _cam_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _cam_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cam_status
       (write-byte _cam_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cam_status
     (setq _cam_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get godelbot::camera_status :md5sum-) "f873732a3c91ce66dcfe6356d6533413")
(setf (get godelbot::camera_status :datatype-) "godelbot/camera_status")
(setf (get godelbot::camera_status :definition-)
      "uint8 cam_status

")



(provide :godelbot/camera_status "f873732a3c91ce66dcfe6356d6533413")


