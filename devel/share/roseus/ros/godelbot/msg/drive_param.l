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
  :slots (_movement ))

(defmethod godelbot::drive_param
  (:init
   (&key
    ((:movement __movement) 0)
    )
   (send-super :init)
   (setq _movement (round __movement))
   self)
  (:movement
   (&optional __movement)
   (if __movement (setq _movement __movement)) _movement)
  (:serialization-length
   ()
   (+
    ;; uint8 _movement
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _movement
       (write-byte _movement s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _movement
     (setq _movement (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get godelbot::drive_param :md5sum-) "1765b6536f8ff9cc8cd9c7b89dbdcbfd")
(setf (get godelbot::drive_param :datatype-) "godelbot/drive_param")
(setf (get godelbot::drive_param :definition-)
      "uint8 movement

")



(provide :godelbot/drive_param "1765b6536f8ff9cc8cd9c7b89dbdcbfd")


