;; Auto-generated. Do not edit!


(when (boundp 'godelbot::drive_param)
  (if (not (find-package "GODELBOT"))
    (make-package "GODELBOT"))
  (shadow 'drive_param (find-package "GODELBOT")))
(unless (find-package "GODELBOT::DRIVE_PARAM")
  (make-package "GODELBOT::DRIVE_PARAM"))

(in-package "ROS")
;;//! \htmlinclude drive_param.msg.html


(defclass godelbot::drive_param
  :super ros::object
  :slots (_velocity _angle ))

(defmethod godelbot::drive_param
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _angle (float __angle))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get godelbot::drive_param :md5sum-) "23ee9ebc4f65684302501539608c3833")
(setf (get godelbot::drive_param :datatype-) "godelbot/drive_param")
(setf (get godelbot::drive_param :definition-)
      "float32 velocity
float32 angle

")



(provide :godelbot/drive_param "23ee9ebc4f65684302501539608c3833")


