cmake_minimum_required(VERSION 3.5)
project(fog_msgs)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(geographic_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  msg/RobotAliveInfo.msg
  msg/RobotAliveInfos.msg
  msg/RobotPrioritySync.msg
  msg/MetaMission.msg
  msg/Mission.msg
  msg/AtomicMission.msg
  msg/FixedwingTakeoffLanding.msg
  msg/MissionStatus.msg
  msg/MissionSyncPermission.msg
  msg/ObjectLost.msg
  msg/ObjectDetected.msg
  msg/SearchTeamRegion.msg
  msg/SearchTeamRegions.msg
  msg/SearchRegion.msg
  msg/SearchRegionArray.msg
  msg/SearchPath.msg
  msg/SearchPathArray.msg
  msg/StatusEvent.msg
  msg/Status.msg
  msg/StringArray.msg
  msg/Team.msg
  msg/TeamState.msg
  msg/TeamStates.msg
  msg/Body.msg
  msg/UInt8.msg
  msg/TypedWaypoint.msg
  msg/FixedwingTask.msg
  msg/Body2.msg
  msg/Status2.msg
  msg/DeviceParameters.msg
  msg/DeviceParametersArray.msg
  msg/BehaviorTreeLog.msg
  msg/BehaviorTreeStatusChange.msg
  msg/ControlInterfaceDiagnostics.msg
  msg/Costmap.msg
  msg/CostmapFilterInfo.msg
  msg/CostmapMetaData.msg
  msg/Geofence.msg
  msg/GeofenceArray.msg
  msg/NavigationDiagnostics.msg
  msg/Particle.msg
  msg/ParticleCloud.msg
  msg/SpeedLimit.msg
  msg/Task.msg
  msg/TaskArray.msg
  msg/TaskMetaData.msg
  msg/Trajectory.msg
  msg/TrajectoryPose.msg
  msg/VoxelGrid.msg
)

set(srv_files
  srv/BridgeConfig.srv
  srv/CheckBumperClear.srv
  srv/ClearCostmapAroundRobot.srv
  srv/ClearCostmapExceptRegion.srv
  srv/ClearEntireCostmap.srv
  srv/GetCostmap.srv
  srv/IsPathValid.srv
  srv/LoadMap.srv
  srv/ManageLifecycleNodes.srv
  srv/ResamplePath.srv
  srv/SaveMap.srv
  srv/SetGeofence.srv
  srv/TransformPath.srv
  srv/TransformPose.srv
)

set(action_files
  action/BackUp.action
  action/ComputePathThroughPoses.action
  action/ComputePathToPose.action
  action/DummyRecovery.action
  action/FollowPath.action
  action/FollowWaypoints.action
  action/Land.action
  action/NavigateThroughPoses.action
  action/NavigateToPose.action
  action/SmoothPath.action
  action/Spin.action
  action/Takeoff.action
  action/Wait.action
)

rosidl_generate_interfaces(${PROJECT_NAME}
    ${msg_files}
    ${srv_files}
    ${action_files}
    DEPENDENCIES builtin_interfaces geometry_msgs std_msgs geographic_msgs nav_msgs action_msgs
  )

ament_export_dependencies(rosidl_default_runtime)
ament_package()
