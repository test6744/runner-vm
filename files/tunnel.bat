@echo off
curl -L https://github.com/Pinggy-io/cli-js/releases/download/v0.3.5/pinggy-win-x64.exe --output pinggy-win-x64.exe
:start
pinggy-win-x64.exe -p 443 -R0:127.0.0.1:3389 -o StrictHostKeyChecking=no -o ServerAliveInterval=30 5ZDnaLMK385+tcp@ap.free.pinggy.io > connection.txt
timeout /t 10
goto start
