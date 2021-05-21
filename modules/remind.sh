#!/bin/bash

function remind () {
  checks=0
  while true; do
  #Reminder=$(echo "\"Deaf & Hard of Hearing Community (and Allies)\" \"staff-bot\" \"@here It's been 2 hours! Please send bump to support this server. :pleading_face: Each successful bump averages about 1 new member.\"")
    LastMessage=$(message discord read "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" | grep -m1 "" | sed 's/^"\(.*\)"$/\1/')
  #echo "  Reminder: $Reminder"
  #echo
  #echo
  #echo "  Last Message: $LastMessage"
  #message discord send $Reminder
  #LastMessage="!bump"
  #Reminder="\"Deaf & Hard of Hearing Community (and Allies)\" \"staff-bot\" \"@here It's been 2 hours! Please send bump to support this server. :pleading_face: Each successful bump averages about 1 new member.\""
  #echo "  Reminder:  $Reminder"
    if [ "$LastMessage" == "!bump" ] || [ "$checks" -lt "6" ]; then
      if [ "$checks" -lt "0" ]; then
        message discord send "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" '@here It has been 2 hours! Please send `!d bump` to support this server. :pleading_face: Each successful bump averages about 1 new member.'
      fi
    elif [ "$LastMessage" == *"!bump"* ]; then
      message discord send "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" '@here asdfiovjiaosemre :pensive: Please send `!d bump`. :pleading_face: Over 6 hours have passed already. :pensive:'
    else
      #sleep $(( ( RANDOM % 275 ) + ( RANDOM % 275 ) + ( RANDOM % 275 ) + ( RANDOM % 275 ) ))
      #message discord send "Deaf & Hard of Hearing Community (and Allies)" "staff-bot" '!d bump'
      echo "test"
    fi
    checks=$((checks + 1))
    sleep 1375
  done
}
