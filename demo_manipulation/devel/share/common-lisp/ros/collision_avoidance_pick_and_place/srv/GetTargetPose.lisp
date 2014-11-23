; Auto-generated. Do not edit!


(cl:in-package collision_avoidance_pick_and_place-srv)


;//! \htmlinclude GetTargetPose-request.msg.html

(cl:defclass <GetTargetPose-request> (roslisp-msg-protocol:ros-message)
  ((world_frame_id
    :reader world_frame_id
    :initarg :world_frame_id
    :type cl:string
    :initform "")
   (ar_tag_frame_id
    :reader ar_tag_frame_id
    :initarg :ar_tag_frame_id
    :type cl:string
    :initform "")
   (shape
    :reader shape
    :initarg :shape
    :type shape_msgs-msg:SolidPrimitive
    :initform (cl:make-instance 'shape_msgs-msg:SolidPrimitive))
   (remove_at_poses
    :reader remove_at_poses
    :initarg :remove_at_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass GetTargetPose-request (<GetTargetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collision_avoidance_pick_and_place-srv:<GetTargetPose-request> is deprecated: use collision_avoidance_pick_and_place-srv:GetTargetPose-request instead.")))

(cl:ensure-generic-function 'world_frame_id-val :lambda-list '(m))
(cl:defmethod world_frame_id-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:world_frame_id-val is deprecated.  Use collision_avoidance_pick_and_place-srv:world_frame_id instead.")
  (world_frame_id m))

(cl:ensure-generic-function 'ar_tag_frame_id-val :lambda-list '(m))
(cl:defmethod ar_tag_frame_id-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:ar_tag_frame_id-val is deprecated.  Use collision_avoidance_pick_and_place-srv:ar_tag_frame_id instead.")
  (ar_tag_frame_id m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:shape-val is deprecated.  Use collision_avoidance_pick_and_place-srv:shape instead.")
  (shape m))

(cl:ensure-generic-function 'remove_at_poses-val :lambda-list '(m))
(cl:defmethod remove_at_poses-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:remove_at_poses-val is deprecated.  Use collision_avoidance_pick_and_place-srv:remove_at_poses instead.")
  (remove_at_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetPose-request>) ostream)
  "Serializes a message object of type '<GetTargetPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'world_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'world_frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ar_tag_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ar_tag_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remove_at_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remove_at_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetPose-request>) istream)
  "Deserializes a message object of type '<GetTargetPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'world_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ar_tag_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ar_tag_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remove_at_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remove_at_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetPose-request>)))
  "Returns string type for a service object of type '<GetTargetPose-request>"
  "collision_avoidance_pick_and_place/GetTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose-request)))
  "Returns string type for a service object of type 'GetTargetPose-request"
  "collision_avoidance_pick_and_place/GetTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetPose-request>)))
  "Returns md5sum for a message object of type '<GetTargetPose-request>"
  "465d51d8a3f39b4cd4049318ef31b315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetPose-request)))
  "Returns md5sum for a message object of type 'GetTargetPose-request"
  "465d51d8a3f39b4cd4049318ef31b315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetPose-request>)))
  "Returns full string definition for message of type '<GetTargetPose-request>"
  (cl:format cl:nil "~%string world_frame_id~%string ar_tag_frame_id~%shape_msgs/SolidPrimitive shape~%geometry_msgs/Pose[] remove_at_poses~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetPose-request)))
  "Returns full string definition for message of type 'GetTargetPose-request"
  (cl:format cl:nil "~%string world_frame_id~%string ar_tag_frame_id~%shape_msgs/SolidPrimitive shape~%geometry_msgs/Pose[] remove_at_poses~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'world_frame_id))
     4 (cl:length (cl:slot-value msg 'ar_tag_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remove_at_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetPose-request
    (cl:cons ':world_frame_id (world_frame_id msg))
    (cl:cons ':ar_tag_frame_id (ar_tag_frame_id msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':remove_at_poses (remove_at_poses msg))
))
;//! \htmlinclude GetTargetPose-response.msg.html

(cl:defclass <GetTargetPose-response> (roslisp-msg-protocol:ros-message)
  ((succeeded
    :reader succeeded
    :initarg :succeeded
    :type cl:boolean
    :initform cl:nil)
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetTargetPose-response (<GetTargetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collision_avoidance_pick_and_place-srv:<GetTargetPose-response> is deprecated: use collision_avoidance_pick_and_place-srv:GetTargetPose-response instead.")))

(cl:ensure-generic-function 'succeeded-val :lambda-list '(m))
(cl:defmethod succeeded-val ((m <GetTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:succeeded-val is deprecated.  Use collision_avoidance_pick_and_place-srv:succeeded instead.")
  (succeeded m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <GetTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collision_avoidance_pick_and_place-srv:target_pose-val is deprecated.  Use collision_avoidance_pick_and_place-srv:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetPose-response>) ostream)
  "Serializes a message object of type '<GetTargetPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeeded) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetPose-response>) istream)
  "Deserializes a message object of type '<GetTargetPose-response>"
    (cl:setf (cl:slot-value msg 'succeeded) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetPose-response>)))
  "Returns string type for a service object of type '<GetTargetPose-response>"
  "collision_avoidance_pick_and_place/GetTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose-response)))
  "Returns string type for a service object of type 'GetTargetPose-response"
  "collision_avoidance_pick_and_place/GetTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetPose-response>)))
  "Returns md5sum for a message object of type '<GetTargetPose-response>"
  "465d51d8a3f39b4cd4049318ef31b315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetPose-response)))
  "Returns md5sum for a message object of type 'GetTargetPose-response"
  "465d51d8a3f39b4cd4049318ef31b315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetPose-response>)))
  "Returns full string definition for message of type '<GetTargetPose-response>"
  (cl:format cl:nil "~%bool succeeded~%geometry_msgs/Pose target_pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetPose-response)))
  "Returns full string definition for message of type 'GetTargetPose-response"
  (cl:format cl:nil "~%bool succeeded~%geometry_msgs/Pose target_pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetPose-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetPose-response
    (cl:cons ':succeeded (succeeded msg))
    (cl:cons ':target_pose (target_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTargetPose)))
  'GetTargetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTargetPose)))
  'GetTargetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose)))
  "Returns string type for a service object of type '<GetTargetPose>"
  "collision_avoidance_pick_and_place/GetTargetPose")