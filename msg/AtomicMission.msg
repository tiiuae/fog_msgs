# Determines the type of the atomic mission (see the TYPE_ constants in this message).
uint8 type

fognav_msgs/Task[] tasks

# Mission types enum.
uint8 TYPE_SYNC_POINT=0
uint8 TYPE_WAYPOINTS=1
