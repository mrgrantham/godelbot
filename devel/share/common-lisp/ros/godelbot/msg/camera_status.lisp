; Auto-generated. Do not edit!


(cl:in-package godelbot-msg)


;//! \htmlinclude camera_status.msg.html

(cl:defclass <camera_status> (roslisp-msg-protocol:ros-message)
  ((cam_status
    :reader cam_status
    :initarg :cam_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass camera_status (<camera_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name godelbot-msg:<camera_status> is deprecated: use godelbot-msg:camera_status instead.")))

(cl:ensure-generic-function 'cam_status-val :lambda-list '(m))
(cl:defmethod cam_status-val ((m <camera_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader godelbot-msg:cam_status-val is deprecated.  Use godelbot-msg:cam_status instead.")
  (cam_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_status>) ostream)
  "Serializes a message object of type '<camera_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cam_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_status>) istream)
  "Deserializes a message object of type '<camera_status>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cam_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_status>)))
  "Returns string type for a message object of type '<camera_status>"
  "godelbot/camera_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_status)))
  "Returns string type for a message object of type 'camera_status"
  "godelbot/camera_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_status>)))
  "Returns md5sum for a message object of type '<camera_status>"
  "f873732a3c91ce66dcfe6356d6533413")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_status)))
  "Returns md5sum for a message object of type 'camera_status"
  "f873732a3c91ce66dcfe6356d6533413")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_status>)))
  "Returns full string definition for message of type '<camera_status>"
  (cl:format cl:nil "uint8 cam_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_status)))
  "Returns full string definition for message of type 'camera_status"
  (cl:format cl:nil "uint8 cam_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_status>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_status>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_status
    (cl:cons ':cam_status (cam_status msg))
))
