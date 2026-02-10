@echo off
net accounts /maxpwage:unlimited >nul
net user runneradmin 6iLEeRH5jXWcbF >nul
echo.
echo =======================================
echo     PINGGY REMOTE DESKTOP SESSION
echo =======================================
echo.
echo Fetching IP from Pinggy...
:: Use curl to get the URL from the Pinggy Web Debugger on port 4300
curl -s http://localhost:4300/urls | findstr "tcp://" || echo "Error: Pinggy tunnel not found. Check your SSH step."
echo.
echo ---------------------------------------
echo User: runneradmin
echo Password: 6iLEeRH5jXWcbF
echo ---------------------------------------
echo.
ping -n 10 127.0.0.1 >nul
