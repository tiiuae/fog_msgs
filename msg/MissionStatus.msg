# Is this even needed?
std_msgs/Header header

# A unique ID of the mission.
uint32_t mission_id

# Index of the current atomic mission of the drone.
uint32 current_atomic_mission

# What is the status of the current atomic mission (see the enum below).
uint8_t status

uint8_t STATUS_NOT_READY
uint8_t STATUS_READY
uint8_t STATUS_EXECUTING
uint8_t STATUS_FINISHED
