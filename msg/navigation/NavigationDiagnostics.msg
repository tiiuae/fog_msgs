std_msgs/Header header

# State of the navigation node
fog_msgs/NavigationState state

# State of the current active waypoint
fog_msgs/NavigationWaypointState waypoint_state
# Index of the current waypoint in the buffer
uint8 waypoint_id
# The current point that navigation is attempting to reach
geometry_msgs/Point waypoint

# The total number of waypoints currently in the buffer
uint32 waypoints_total
