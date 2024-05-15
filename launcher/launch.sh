#!/bin/bash
#Launch local server and open an electron windows
# this file is subject to Licence
#Copyright (c) 2024, Acktarius
##################################################################


#functions
function nodeIndex () {
node index.js
sleep 1
}

electron() {
npm exec electron ./electron/main.js
}


set -e
nodeIndex &
electron