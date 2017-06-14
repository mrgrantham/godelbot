; Auto-generated. Do not edit!


(cl:in-package godelbot-srv)


;//! \htmlinclude set_camera_mode-request.msg.html

(cl:defclass <set_camera_mode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass set_camera_mode-request (<set_camera_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_camera_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_camera_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name godelbot-srv:<set_camera_mode-request> is deprecated: use godelbot-srv:set_camera_mode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <set_camera_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader godelbot-srv:mode-val is deprecated.  Use godelbot-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_camera_mode-request>) ostream)
  "Serializes a message object of type '<set_camera_mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_camera_mode-request>) istream)
  "Deserializes a message object of type '<set_camera_mode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_camera_mode-request>)))
  "Returns string type for a service object of type '<set_camera_mode-request>"
  "godelbot/set_camera_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_camera_mode-request)))
  "Returns string type for a service object of type 'set_camera_mode-request"
  "godelbot/set_camera_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_camera_mode-request>)))
  "Returns md5sum for a message object of type '<set_camera_mode-request>"
  "cd2737036405069bf2d76a05df1c316d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_camera_mode-request)))
  "Returns md5sum for a message object of type 'set_camera_mode-request"
  "cd2737036405069bf2d76a05df1c316d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_camera_mode-request>)))
  "Returns full string definition for message of type '<set_camera_mode-request>"
  (cl:format cl:nil "~%~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_camera_mode-request)))
  "Returns full string definition for message of type 'set_camera_mode-request"
  (cl:format cl:nil "~%~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_camera_mode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_camera_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_camera_mode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude set_camera_mode-response.msg.html

(cl:defclass <set_camera_mode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_camera_mode-response (<set_camera_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_camera_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_camera_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name godelbot-srv:<set_camera_mode-response> is deprecated: use godelbot-srv:set_camera_mode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_camera_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader godelbot-srv:success-val is deprecated.  Use godelbot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_camera_mode-response>) ostream)
  "Serializes a message object of type '<set_camera_mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_camera_mode-response>) istream)
  "Deserializes a message object of type '<set_camera_mode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_camera_mode-response>)))
  "Returns string type for a service object of type '<set_camera_mode-response>"
  "godelbot/set_camera_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_camera_mode-response)))
  "Returns string type for a service object of type 'set_camera_mode-response"
  "godelbot/set_camera_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_camera_mode-response>)))
  "Returns md5sum for a message object of type '<set_camera_mode-response>"
  "cd2737036405069bf2d76a05df1c316d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_camera_mode-response)))
  "Returns md5sum for a message object of type 'set_camera_mode-response"
  "cd2737036405069bf2d76a05df1c316d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_camera_mode-response>)))
  "Returns full string definition for message of type '<set_camera_mode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_camera_mode-response)))
  "Returns full string definition for message of type 'set_camera_mode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_camera_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_camera_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_camera_mode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_camera_mode)))
  'set_camera_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_camera_mode)))
  'set_camera_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_camera_mode)))
  "Returns string type for a service object of type '<set_camera_mode>"
  "godelbot/set_camera_mode")