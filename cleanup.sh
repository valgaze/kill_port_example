#! /bin/bash

PORT=$1

function instructions {
   cat << EOF
Usage: ./cleanup.sh port_number

Pass in port_number as a parameter, will attempt to kill process on that port
EOF
   exit 1
}

if [ -z "$PORT" ]; then echo "Whoops, you didn't add a port number"; instructions; exit 0; fi
kill -9 $(lsof -i TCP:$PORT | grep LISTEN | awk '{print $2}')

