int32 size                # N number of waypoints
int32 current_waypoint    # index of the current waypoint [(-1) - N]. 
                          # - (-1) means that the mission has been canceled.
                          # - N means that all the waypoints were visited.
uint32 mission_id         # zero is reserved for mission started other way than through the local path callback
