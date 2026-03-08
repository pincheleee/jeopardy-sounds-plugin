#!/bin/bash
# Kill any existing jeopardy loop
pkill -f "loop_jeopardy_player" 2>/dev/null
pkill -f "afplay.*jeopardy_10s" 2>/dev/null

# Start looping in background with a tag we can kill later
exec -a loop_jeopardy_player bash -c '
SOUND="/Users/robertmonterroso/Desktop/Robert monterroso all things/Projects/casino-pling-plugin/sounds/jeopardy_10s.aiff"
while true; do
  afplay -v 0.3 "$SOUND"
done
' &
