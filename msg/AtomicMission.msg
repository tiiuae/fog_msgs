# Determines the type of the atomic mission (see the TYPE_ constants in this message).
uint8 type

# This field is interpreted based on the mission type:
# * type == TYPE_SYNC_POINT:  unused
# * type == TYPE_WAYPOINTS:   the points represent the waypoints
# * type == TYPE_AREA_SCAN:   the points represent the area vertices
geometry_msgs/Point[] points

# Mission types enum.
uint8 TYPE_SYNC_POINT=0
uint8 TYPE_WAYPOINTS=1
uint8 TYPE_AREA_SCAN=2
