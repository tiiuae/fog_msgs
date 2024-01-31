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
find_package(fognav_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  msg/RobotAliveInfo.msg
  msg/RobotAliveInfos.msg
  msg/RobotPrioritySync.msg
  msg/MetaMission.msg
  msg/Mission.msg
  msg/AtomicMission.msg
  msg/MissionStatus.msg
  msg/MissionSyncPermission.msg
  msg/ObjectLost.msg
  msg/ObjectDetected.msg
  msg/SearchRegion.msg
  msg/SearchRegionArray.msg
  msg/SearchPath.msg
  msg/SearchPathArray.msg
  msg/StatusEvent.msg
  msg/Status.msg
  msg/StringArray.msg
  msg/TeamState.msg
  msg/TeamStates.msg
  msg/Body.msg
  msg/UInt8.msg
)

rosidl_generate_interfaces(${PROJECT_NAME}
    ${msg_files}
    DEPENDENCIES builtin_interfaces geometry_msgs std_msgs geographic_msgs fognav_msgs
  )

ament_export_dependencies(rosidl_default_runtime)
ament_package()
