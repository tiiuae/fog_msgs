# Is this even needed?
std_msgs/Header header

# Index of the atomic mission currently being executed by the drone.
# The Special value -1 means that the manager has not started executing
# the first mission (at index 0).
uint32 current_atomic_mission

# Index of the next mission synchronization point on which the execution
# of atomic missions will be paused.
uint32 next_sync_point

# what is the status of the current atomic mission (see the enum below)
uint8_t status

uint8_t STATUS_NOT_READY
uint8_t STATUS_READY
uint8_t STATUS_EXECUTING
uint8_t STATUS_FINISHED
