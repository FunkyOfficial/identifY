#!/bin/bash

while true; do
inotifywait -q -e modify identifY.sh
if $(bash identifY.sh self_test); then
        echo "$(date) Executing identifY.sh"
  #./identifY.sh
else
        shellcheck identifY.sh
        echo "$(date) FATAL: Self-test failed!"
fi
echo "$(date) Testrunner: Done, Build Successful!"
done
