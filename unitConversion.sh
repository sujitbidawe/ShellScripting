#! /bin/bash
# 1 ft = 12 inches

read -p 'enter size in inches: ' inch

echo -n "$inch inches in feet: "
echo "scale=2; $inch/12" | bc

