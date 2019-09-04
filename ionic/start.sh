#!/bin/sh

if find angular.json 2>/dev/null; then
    echo "App exists"
else
    echo "Copy template to app directory..."
    cp -rf /template/* /app/
fi

if $INIT_IONIC_SERVER ; then
    echo "Starting ionic Server..."
    
    if $INIT_IONIC_LAB ; then
        npm run ionicserve
    else
        npm run ioniclab
    fi
else
    bash
fi