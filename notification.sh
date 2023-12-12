
#----------------------------------------------------------------------------------------------------------
# University of Nebraska-Lincoln C.M.R.T.N v1.0 (Checkout Macbook Remaining Time Notification)
# Written by Hunter Hackley
# 
# This dialog will serve as an example notification for our checkout MacBook devices
# that will show on logon and display the remaining time left on their checkout period.
#----------------------------------------------------------------------------------------------------------
#
# History:
# 
# Version 0.1 - 12-10-2023
# Display a basic notification 
# - Full Name of user logged into device
# - Basic dialog options for customizing
#
#----------------------------------------------------------------------------------------------------------

# Get the full user's profile name
fullName=$(id -P | awk -F '[:=]' '{print $8}')

# Diaglog Options
notiTitle="Test Notification"
notiMessage="Hello $fullName! This is a test notification! "

# Dialog Call
/usr/local/bin/dialog --notification -t "$notiTitle" -m "$notiMessage" 
