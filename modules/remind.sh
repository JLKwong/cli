#!/bin/bash

function remind () {
  Reminder=$(message discord send "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" "@here It's been 2 hours! Please send \`!d bump\` to support this server. :pleading_face: Each successful bump averages about 1 new member.")
  LastMessage=$(message discord read "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" | grep -m1 "")
  echo "  BEFORE CONDITIONAL"
  if [ "$LastMessage" = '!bump' ]; then
    echo $Reminder
  echo "  INSIDE CONDITIONAL"
  fi
}
