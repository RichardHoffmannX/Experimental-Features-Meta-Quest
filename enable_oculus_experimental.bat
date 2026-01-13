@echo off
echo Checking connected devices...
adb get-state >nul 2>&1
if errorlevel 1 (
    echo No ADB device detected.
    pause
    exit /b 1
)

echo.
for /f "delims=" %%A in ('adb shell getprop debug.oculus.experimentalEnabled') do set CURRENT=%%A
echo Current value: %CURRENT%

echo.
echo Enabling Oculus experimental features...
adb shell setprop debug.oculus.experimentalEnabled 1

echo.
for /f "delims=" %%A in ('adb shell getprop debug.oculus.experimentalEnabled') do set CURRENT=%%A
echo New value: %CURRENT%

echo.
pause
