#!/bin/sh

if find angular.json 2>/dev/null; then
    echo "App exists"
else
    echo "Copy template to app directory..."
    cp -rf /template/* /app/
fi

if $INIT_IONIC_SERVER ; then
    echo "Starting ionic Server..."
    npm run ionicserve
else
    bash
fi