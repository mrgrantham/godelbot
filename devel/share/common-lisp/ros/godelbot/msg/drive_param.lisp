; Auto-generated. Do not edit!


(cl:in-package godelbot-msg)


;//! \htmlinclude drive_param.msg.html

(cl:defclass <drive_param> (roslisp-msg-protocol:ros-message)
  ((movement
    :reader movement
    :initarg :movement
    :type cl:fixnum
    :initform 0))
)

(cl:defclass drive_param (<drive_param>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drive_param>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drive_param)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name godelbot-msg:<drive_param> is deprecated: use godelbot-msg:drive_param instead.")))

(cl:ensure-generic-function 'movement-val :lambda-list '(m))
(cl:defmethod movement-val ((m <drive_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader godelbot-msg:movement-val is deprecated.  Use godelbot-msg:movement instead.")
  (movement m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drive_param>) ostream)
  "Serializes a message object of type '<drive_param>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'movement)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drive_param>) istream)
  "Deserializes a message object of type '<drive_param>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'movement)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drive_param>)))
  "Returns string type for a message object of type '<drive_param>"
  "godelbot/drive_param")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drive_param)))
  "Returns string type for a message object of type 'drive_param"
  "godelbot/drive_param")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drive_param>)))
  "Returns md5sum for a message object of type '<drive_param>"
  "1765b6536f8ff9cc8cd9c7b89dbdcbfd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drive_param)))
  "Returns md5sum for a message object of type 'drive_param"
  "1765b6536f8ff9cc8cd9c7b89dbdcbfd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drive_param>)))
  "Returns full string definition for message of type '<drive_param>"
  (cl:format cl:nil "uint8 movement~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drive_param)))
  "Returns full string definition for message of type 'drive_param"
  (cl:format cl:nil "uint8 movement~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drive_param>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drive_param>))
  "Converts a ROS message object to a list"
  (cl:list 'drive_param
    (cl:cons ':movement (movement msg))
))
