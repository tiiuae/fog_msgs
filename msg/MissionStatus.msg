# A unique ID of the mission.
string mission_id

# Index of the current atomic mission of the robot.
uint32 current_atomic_mission

# What is the status of the current atomic mission (see the enum below).
uint8 status

uint8 STATUS_NOT_READY = 0
uint8 STATUS_READY = 1
uint8 STATUS_EXECUTING = 2
uint8 STATUS_FINISHED = 3
