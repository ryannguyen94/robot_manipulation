; Auto-generated. Do not edit!


(cl:in-package my_kuka_robot-srv)


;//! \htmlinclude robot_FK-request.msg.html

(cl:defclass <robot_FK-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))))
)

(cl:defclass robot_FK-request (<robot_FK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_FK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_FK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_kuka_robot-srv:<robot_FK-request> is deprecated: use my_kuka_robot-srv:robot_FK-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <robot_FK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kuka_robot-srv:points-val is deprecated.  Use my_kuka_robot-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_FK-request>) ostream)
  "Serializes a message object of type '<robot_FK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_FK-request>) istream)
  "Deserializes a message object of type '<robot_FK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_FK-request>)))
  "Returns string type for a service object of type '<robot_FK-request>"
  "my_kuka_robot/robot_FKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_FK-request)))
  "Returns string type for a service object of type 'robot_FK-request"
  "my_kuka_robot/robot_FKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_FK-request>)))
  "Returns md5sum for a message object of type '<robot_FK-request>"
  "5e8f3f69a9d33e59c9acff119ff14aea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_FK-request)))
  "Returns md5sum for a message object of type 'robot_FK-request"
  "5e8f3f69a9d33e59c9acff119ff14aea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_FK-request>)))
  "Returns full string definition for message of type '<robot_FK-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_FK-request)))
  "Returns full string definition for message of type 'robot_FK-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_FK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_FK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_FK-request
    (cl:cons ':points (points msg))
))
;//! \htmlinclude robot_FK-response.msg.html

(cl:defclass <robot_FK-response> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass robot_FK-response (<robot_FK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_FK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_FK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_kuka_robot-srv:<robot_FK-response> is deprecated: use my_kuka_robot-srv:robot_FK-response instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <robot_FK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kuka_robot-srv:poses-val is deprecated.  Use my_kuka_robot-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_FK-response>) ostream)
  "Serializes a message object of type '<robot_FK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_FK-response>) istream)
  "Deserializes a message object of type '<robot_FK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_FK-response>)))
  "Returns string type for a service object of type '<robot_FK-response>"
  "my_kuka_robot/robot_FKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_FK-response)))
  "Returns string type for a service object of type 'robot_FK-response"
  "my_kuka_robot/robot_FKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_FK-response>)))
  "Returns md5sum for a message object of type '<robot_FK-response>"
  "5e8f3f69a9d33e59c9acff119ff14aea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_FK-response)))
  "Returns md5sum for a message object of type 'robot_FK-response"
  "5e8f3f69a9d33e59c9acff119ff14aea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_FK-response>)))
  "Returns full string definition for message of type '<robot_FK-response>"
  (cl:format cl:nil "geometry_msgs/Pose[] poses~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_FK-response)))
  "Returns full string definition for message of type 'robot_FK-response"
  (cl:format cl:nil "geometry_msgs/Pose[] poses~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_FK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_FK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_FK-response
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_FK)))
  'robot_FK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_FK)))
  'robot_FK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_FK)))
  "Returns string type for a service object of type '<robot_FK>"
  "my_kuka_robot/robot_FK")