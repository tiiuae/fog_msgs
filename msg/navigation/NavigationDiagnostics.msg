std_msgs/Header header

# State of the navigation node
fog_msgs/NavigationState state

# State of the current active waypoint
fog_msgs/NavigationWaypointState waypoint_state
# progress of the current mission (current waypoint index out of the total n. of waypoints)
fog_msgs/MissionProgress mission_progress

# The total number of waypoints currently in the buffer
uint32 waypoints_total
