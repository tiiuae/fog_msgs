# Timestamp of this message used for synchronization.
builtin_interfaces/Time stamp

# A unique ID of the team.
string team_id

# What is the team's state (see the enum below).
uint8 state

uint8 STATE_SEARCHING = 0
uint8 STATE_FOUND = 1
uint8 STATE_LOST = 2
