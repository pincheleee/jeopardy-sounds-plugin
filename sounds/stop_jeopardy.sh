#!/bin/bash
# Stop the jeopardy loop and play the right answer ding
pkill -f "loop_jeopardy_player" 2>/dev/null
pkill -f "afplay.*jeopardy_10s" 2>/dev/null
afplay -v 0.3 '/Users/robertmonterroso/Desktop/Robert monterroso all things/Projects/casino-pling-plugin/sounds/jeopardy_right.aiff' &
