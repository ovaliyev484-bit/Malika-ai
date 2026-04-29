@echo off
echo ========================================
echo Starting Malika AI Assistant
echo ========================================
echo.

echo Checking Python...
python --version
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    pause
    exit /b 1
)

echo.
echo Starting Malika Assistant...
echo Press Ctrl+C to stop
echo.

python main.py

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Malika Assistant failed to start
    echo.
    echo Possible solutions:
    echo 1. Run setup_malika.bat first to install dependencies
    echo 2. Check if all required packages are installed
    echo 3. Make sure you have a valid Gemini API key
    echo.
    pause
)
