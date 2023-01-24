# Name of the drone which should execute this mission.
string drone_id

# A unique ID of the mission.
uint32 mission_id

# An ordered list of atomic missions and synchronization points for the drone.
fog_msgs/AtomicMission[] atomics
