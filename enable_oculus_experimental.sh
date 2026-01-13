#!/bin/bash

if ! adb get-state >/dev/null 2>&1; then
  echo "No ADB device detected."
  exit 1
fi

echo
echo "Current debug.oculus.experimentalEnabled value:"
CURRENT=$(adb shell getprop debug.oculus.experimentalEnabled)
echo "$CURRENT"

echo
echo "Enabling Oculus experimental features..."
adb shell setprop debug.oculus.experimentalEnabled 1

echo
echo "New value:"
adb shell getprop debug.oculus.experimentalEnabled

echo
