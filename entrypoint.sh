#!/bin/bash
cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
export PTY_STARTUP=${MODIFIED_STARTUP}
python -c 'import pty; import os; pty.spawn(os.environ["PTY_STARTUP"])'
