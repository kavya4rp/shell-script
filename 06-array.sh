#!/bin/bash

MOVIES=("RRR" "DJ TILLU" "PRINCE")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo "First movie is: ${MOVIES[0]}"
echo "First movie is: ${MOVIES[1]}"
echo "First movie is: ${MOVIES[@]}"
