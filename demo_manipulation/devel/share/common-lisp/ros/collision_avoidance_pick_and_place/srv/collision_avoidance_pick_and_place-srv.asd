
(cl:in-package :asdf)

(defsystem "collision_avoidance_pick_and_place-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :shape_msgs-msg
)
  :components ((:file "_package")
    (:file "GetTargetPose" :depends-on ("_package_GetTargetPose"))
    (:file "_package_GetTargetPose" :depends-on ("_package"))
  ))