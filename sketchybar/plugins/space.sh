#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

# sketchybar --set $NAME background.drawing=$SELECTED \
# 	icon.highlight=$SELECTED \
# 	label.highlight=$SELECTED

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on icon.highlight=on label.highlight=on
else
    sketchybar --set $NAME background.drawing=off icon.highlight=off label.highlight=off
fi
