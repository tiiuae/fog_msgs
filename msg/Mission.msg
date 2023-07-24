# Name of the robot which should execute this mission.
string robot_id

# A unique ID of the mission.
uint32 mission_id

# An ordered list of atomic missions and synchronization points for the robot.
fog_msgs/AtomicMission[] atomics
