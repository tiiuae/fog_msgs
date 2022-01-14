std_msgs/Header header
bool armed
uint8 vehicle_state
uint8 mission_state
int16 mission_size
int16 mission_waypoint
bool gps_origin_set
bool getting_odom
bool getting_control_mode

uint8 VEHICLE_NOT_INITIALIZED = 0
uint8 VEHICLE_NOT_READY = 1
uint8 VEHICLE_TAKEOFF_READY = 2
uint8 VEHICLE_TAKING_OFF = 3
uint8 VEHICLE_AUTONOMOUS_FLIGHT = 4
uint8 VEHICLE_MANUAL_FLIGHT = 5

uint8 MISSION_UPLOADING = 0
uint8 MISSION_IN_PROGRESS = 1
uint8 MISSION_FINISHED = 2
