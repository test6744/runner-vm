# Download Pinggy binary if not already present
$exe = "pinggy-win-x64.exe"
if (-not (Test-Path $exe)) {
    Invoke-WebRequest -Uri "https://github.com/Pinggy-io/cli-js/releases/download/v0.3.5/pinggy-win-x64.exe" -OutFile $exe
}

# Loop forever
while ($true) {
    # Run Pinggy and capture output to connection.txt
    & .\pinggy-win-x64.exe -p 443 -R0:127.0.0.1:3389 tcp@ap.free.pinggy.io | Select-String "tcp://" | Tee-Object -FilePath connection.txt

    # Wait 10 seconds before restarting
    Start-Sleep -Seconds 10
}
