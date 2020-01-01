#!/bin/bash
. node-env/bin/activate
until npm start; do
    echo $(date -u) "Server crashed with exit code $?.  Respawning.." >> script_logs.txt
    sleep 1
done
