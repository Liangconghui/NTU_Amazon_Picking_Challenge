; Auto-generated. Do not edit!


(cl:in-package robot_io-srv)


;//! \htmlinclude DigitalOutputUpdate-request.msg.html

(cl:defclass <DigitalOutputUpdate-request> (roslisp-msg-protocol:ros-message)
  ((request_type
    :reader request_type
    :initarg :request_type
    :type cl:integer
    :initform 0)
   (bit_index
    :reader bit_index
    :initarg :bit_index
    :type cl:integer
    :initform 0)
   (output_bit_state
    :reader output_bit_state
    :initarg :output_bit_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DigitalOutputUpdate-request (<DigitalOutputUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutputUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutputUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_io-srv:<DigitalOutputUpdate-request> is deprecated: use robot_io-srv:DigitalOutputUpdate-request instead.")))

(cl:ensure-generic-function 'request_type-val :lambda-list '(m))
(cl:defmethod request_type-val ((m <DigitalOutputUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_io-srv:request_type-val is deprecated.  Use robot_io-srv:request_type instead.")
  (request_type m))

(cl:ensure-generic-function 'bit_index-val :lambda-list '(m))
(cl:defmethod bit_index-val ((m <DigitalOutputUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_io-srv:bit_index-val is deprecated.  Use robot_io-srv:bit_index instead.")
  (bit_index m))

(cl:ensure-generic-function 'output_bit_state-val :lambda-list '(m))
(cl:defmethod output_bit_state-val ((m <DigitalOutputUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_io-srv:output_bit_state-val is deprecated.  Use robot_io-srv:output_bit_state instead.")
  (output_bit_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DigitalOutputUpdate-request>)))
    "Constants for message type '<DigitalOutputUpdate-request>"
  '((:COUNT . 8)
    (:SUCTION1_ON . 1)
    (:SUCTION2_ON . 2)
    (:COLLISION . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DigitalOutputUpdate-request)))
    "Constants for message type 'DigitalOutputUpdate-request"
  '((:COUNT . 8)
    (:SUCTION1_ON . 1)
    (:SUCTION2_ON . 2)
    (:COLLISION . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutputUpdate-request>) ostream)
  "Serializes a message object of type '<DigitalOutputUpdate-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bit_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bit_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bit_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bit_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_bit_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutputUpdate-request>) istream)
  "Deserializes a message object of type '<DigitalOutputUpdate-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bit_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bit_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bit_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bit_index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_bit_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutputUpdate-request>)))
  "Returns string type for a service object of type '<DigitalOutputUpdate-request>"
  "robot_io/DigitalOutputUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputUpdate-request)))
  "Returns string type for a service object of type 'DigitalOutputUpdate-request"
  "robot_io/DigitalOutputUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutputUpdate-request>)))
  "Returns md5sum for a message object of type '<DigitalOutputUpdate-request>"
  "5decc6a45bba41be52c4b7de53de20e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutputUpdate-request)))
  "Returns md5sum for a message object of type 'DigitalOutputUpdate-request"
  "5decc6a45bba41be52c4b7de53de20e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutputUpdate-request>)))
  "Returns full string definition for message of type '<DigitalOutputUpdate-request>"
  (cl:format cl:nil "uint32 request_type~%uint32 bit_index~%bool output_bit_state~%~%uint32 COUNT=8~%uint32 SUCTION1_ON=1~%uint32 SUCTION2_ON=2~%uint32 COLLISION=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutputUpdate-request)))
  "Returns full string definition for message of type 'DigitalOutputUpdate-request"
  (cl:format cl:nil "uint32 request_type~%uint32 bit_index~%bool output_bit_state~%~%uint32 COUNT=8~%uint32 SUCTION1_ON=1~%uint32 SUCTION2_ON=2~%uint32 COLLISION=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutputUpdate-request>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutputUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutputUpdate-request
    (cl:cons ':request_type (request_type msg))
    (cl:cons ':bit_index (bit_index msg))
    (cl:cons ':output_bit_state (output_bit_state msg))
))
;//! \htmlinclude DigitalOutputUpdate-response.msg.html

(cl:defclass <DigitalOutputUpdate-response> (roslisp-msg-protocol:ros-message)
  ((output_bit_array
    :reader output_bit_array
    :initarg :output_bit_array
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass DigitalOutputUpdate-response (<DigitalOutputUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutputUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutputUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_io-srv:<DigitalOutputUpdate-response> is deprecated: use robot_io-srv:DigitalOutputUpdate-response instead.")))

(cl:ensure-generic-function 'output_bit_array-val :lambda-list '(m))
(cl:defmethod output_bit_array-val ((m <DigitalOutputUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_io-srv:output_bit_array-val is deprecated.  Use robot_io-srv:output_bit_array instead.")
  (output_bit_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutputUpdate-response>) ostream)
  "Serializes a message object of type '<DigitalOutputUpdate-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'output_bit_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'output_bit_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutputUpdate-response>) istream)
  "Deserializes a message object of type '<DigitalOutputUpdate-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'output_bit_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'output_bit_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutputUpdate-response>)))
  "Returns string type for a service object of type '<DigitalOutputUpdate-response>"
  "robot_io/DigitalOutputUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputUpdate-response)))
  "Returns string type for a service object of type 'DigitalOutputUpdate-response"
  "robot_io/DigitalOutputUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutputUpdate-response>)))
  "Returns md5sum for a message object of type '<DigitalOutputUpdate-response>"
  "5decc6a45bba41be52c4b7de53de20e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutputUpdate-response)))
  "Returns md5sum for a message object of type 'DigitalOutputUpdate-response"
  "5decc6a45bba41be52c4b7de53de20e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutputUpdate-response>)))
  "Returns full string definition for message of type '<DigitalOutputUpdate-response>"
  (cl:format cl:nil "bool[] output_bit_array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutputUpdate-response)))
  "Returns full string definition for message of type 'DigitalOutputUpdate-response"
  (cl:format cl:nil "bool[] output_bit_array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutputUpdate-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'output_bit_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutputUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutputUpdate-response
    (cl:cons ':output_bit_array (output_bit_array msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DigitalOutputUpdate)))
  'DigitalOutputUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DigitalOutputUpdate)))
  'DigitalOutputUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputUpdate)))
  "Returns string type for a service object of type '<DigitalOutputUpdate>"
  "robot_io/DigitalOutputUpdate")