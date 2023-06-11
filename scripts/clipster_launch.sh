#!/bin/bash

# Terminate already running instances
killall -q 'clipster'

# Wait until the processes have been shut down
while pgrep -x clipster >/dev/null; do sleep 1; done

# reload clipster

clipster -d
