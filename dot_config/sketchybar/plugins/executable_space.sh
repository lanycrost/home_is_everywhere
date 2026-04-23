#!/bin/bash
# Highlight the active AeroSpace workspace
# AEROSPACE_FOCUSED_WORKSPACE is set by the aerospace event
# NAME is e.g. "space.3", so we extract the number after the dot

CURRENT_WORKSPACE="$AEROSPACE_FOCUSED_WORKSPACE"
SPACE_INDEX="${NAME#space.}"

if [ "$SPACE_INDEX" = "$CURRENT_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on icon.color=0xff1e1e2e background.color=0xff89b4fa
else
  sketchybar --set "$NAME" background.drawing=off icon.color=0xffcdd6f4
fi
