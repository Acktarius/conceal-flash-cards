#!/bin/bash
#Launch local server and open an electron windows
# this file is subject to Licence
#Copyright (c) 2024, Acktarius
##################################################################

#declarations functions
trap "trap - SIGTERM && kill 0" SIGINT SIGTERM EXIT

#main

set -e

node index.js &
nodeIndexPID=$!
npm exec electron ./electron/main.js
kill -15 ${nodeIndexPID}
