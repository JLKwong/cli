#!/bin/bash

function remind () {
  Reminder="\"Deaf & Hard of Hearing Community (and Allies)\" \"staff-bot\" \"@here It's been 2 hours! Please send bump to support this server. :pleading_face: Each successful bump averages about 1 new member.\""
  LastMessage=$(message discord read "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" | grep -m1 "" | sed 's/^"\(.*\)"$/\1/')
  echo $Reminder
  message discord send $Reminder
  if [ "$LastMessage" == "!bump" ]; then
    message discord send $Reminder
  fi
}
