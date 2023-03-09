# Copyright (c) 2022, Technology Innovation Institute (TII)
# Trajectory Message Version 1
# Planned future trajectory for drone

# Message Header, timestamp represents when plan is calculated
std_msgs/Header header

# Right of way priority, smaller priority number has right of way
uint16 priority

# Drone identifier
string<=20 droneid

# Datum reference point for path messages
geographic_msgs/GeoPoint datum

# Planned trajectory
geometry_msgs/Point[10] path
