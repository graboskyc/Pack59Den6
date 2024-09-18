#!/bin/bash

echo
echo "+================================"
echo "| START: Den6"
echo "+================================"
echo

datehash=`date | md5sum | cut -d" " -f1`
abbrvhash=${datehash: -8}

echo 
echo "Building container using tag ${abbrvhash}"
echo
docker build -t graboskyc/pack59den6:latest -t graboskyc/pack59den6:${abbrvhash} .

EXITCODE=$?

if [ $EXITCODE -eq 0 ]
    then

    echo 
    echo "Starting container"
    echo
    docker stop pack59den6
    docker rm pack59den6
    docker run -t -i -d -p 8000:8000 --name pack59den6 --restart unless-stopped graboskyc/pack59den6:${abbrvhash}

    echo
    echo "+================================"
    echo "| END:  Den6"
    echo "+================================"
    echo
else
    echo
    echo "+================================"
    echo "| ERROR: Build failed"
    echo "+================================"
    echo
fi