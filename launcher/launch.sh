#!/bin/bash
#Launch local server and open an electron windows
# this file is subject to Licence
#Copyright (c) 2024, Acktarius
##################################################################

#declarations functions


#main

set -e

node index.js &
nodeIndexPID=$!
trap "kill -15 ${nodeIndexPID}" EXIT
npm exec electron ./electron/main.js

