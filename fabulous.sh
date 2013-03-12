#!/bin/sh
#
# Usage: faboulous [text]
# if no text then FABULOUS
#
# by Ivyl

TEXT=$@

if [ -z "$TEXT" ]; then
    TEXT="FABULOUS"
fi

TEXT=$(toilet --gay -f mono12 $TEXT)
CLEAR=$(clear)

COUNTER=0

while true; do
    COUNTER=$(((COUNTER+1)%6))

    if [ "$COUNTER" -eq 0 ]; then
        echo "$CLEAR"
    else
        echo "$TEXT"
    fi

    sleep 0.15
done

