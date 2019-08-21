#!/bin/sh

target=/app

if find "$target" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
    echo "App exists, init server..."
else
    echo "Copy template to app directory..."
    cp /template/* /app -rf

    echo "Install dependencies..."
    #TODO: adicionar parâmetro para não entrar no build, e aguardar a instalação via Windows.
    npm install
fi

echo "Starting ng Server..."
npm start
