#----------------------------------------------------------------------------------------------------------
# University of Nebraska-Lincoln Checkout MacBook Policy Popup
# Written by Hunter Hackley
#
# This dialog will serve as a popup for our checkout MacBook devices on logon that will display important
# information such as contact and basic information regarding late fees for the checkout process
#----------------------------------------------------------------------------------------------------------
#
# History:
#
# Version 0.1 - 11-12-2023
# Display important information regarding checkout policy
# - Full name of logged in user
# - Various dialog options 
# - Countdown timer to prevent premature closing of popup window
#
# Version 0.2 - 12-10-2023
# Added extra diaglog calls for different use examples. 
# - Can be used by uncommenting the example block and running 'sh popup.sh' in terminal.
#
#----------------------------------------------------------------------------------------------------------


# Get the full user's profile name
fullName=$(id -P | awk -F '[:=]' '{print $8}')

# Dialog options
dialogIcon="nebraska-n".jpg
dialogTitle="Important Information"
dialogMessage="$fullName, You are responsible in whole for any damages that may occur while this device is in your possesion. This device will be due
exactly 7 days from when the device is checked out, to the minute.
\nEmail: support@nebraska.edu   \nPhone: 402-472-3970     \nLate Fee: \$21/Day"
buttonText="Okay"
button2Text="No Thank You"

# Dialog calls

# Example with countdown timer
/usr/local/bin/dialog -t "$dialogTitle" -m "$dialogMessage" -i "$dialogIcon" --timer

# Example with single Button 
# /usr/local/bin/dialog -t "$dialogTitle" -m "$dialogMessage" -i "$dialogIcon" -button1text "Okay"

# Example with two Buttons
# /usr/local/bin/dialog -t "$dialogTitle" -m "$dialogMessage" -i "$dialogIcon" --button1text "Okay" --button2text "No Thank You"

# Example as an alert style
# /usr/local/bin/dialog --style alert -b -t "$dialogTitle" -m "$dialogMessage" -i "$dialogIcon"