#!/bin/bash

function remind () {
  Reminder=$(echo "\"Deaf & Hard of Hearing Community (and Allies)\" \"staff-bot\" \"@here It's been 2 hours! Please send bump to support this server. :pleading_face: Each successful bump averages about 1 new member.\"")
  LastMessage=$(message discord read "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" | grep -m1 "" | sed 's/^"\(.*\)"$/\1/')
  #echo "  Reminder: $Reminder"
  #echo
  #echo
  #echo
  #echo "  Last Message: $LastMessage"
  #message discord send $Reminder
  LastMessage="!bump"
  Reminder="\"Deaf & Hard of Hearing Community (and Allies)\" \"staff-bot\" \"@here It's been 2 hours! Please send bump to support this server. :pleading_face: Each successful bump averages about 1 new member.\"")
  if [ "$LastMessage" == "!bump" ]; then
    message discord send "$Reminder"
  fi
}
