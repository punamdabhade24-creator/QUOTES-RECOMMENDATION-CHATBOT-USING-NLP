#!/bin/bash

# Start Action Server on default port 5055
echo "Starting Action Server on port 5055..."
rasa run actions --actions actions --port 5055 &
ACTION_PID=$!

# Wait a moment for action server to start
sleep 3

# Start Rasa Server on default port 5005 (NOT 10000)
echo "Starting Rasa Server on port 5005..."
rasa run --enable-api --cors "*" --port 5005

# If Rasa stops, kill action server
kill $ACTION_PID
