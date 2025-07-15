@echo off
NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~dpnx0' -Verb RunAs"
    exit /b
)
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"[System.Environment]::SetEnvironmentVariable('Path', [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';C:\Users\Roki Garang\AppData\Local\Programs\Python\Python313', 'Machine'); Write-Host 'Python path has been added successfully!' -ForegroundColor Green; pause"
