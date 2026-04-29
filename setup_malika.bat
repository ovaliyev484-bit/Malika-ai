@echo off
echo ========================================
echo Malika AI Assistant - Setup
echo ========================================
echo.

echo Checking Python version...
python --version
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.10 or higher from https://www.python.org/downloads/
    pause
    exit /b 1
)

echo.
echo Upgrading pip...
python -m pip install --upgrade pip

echo.
echo Installing required packages...
echo Note: For Python 3.14+, using sounddevice instead of pyaudio...

REM Install packages from requirements.txt
python -m pip install -r requirements.txt

REM If pyaudio failed to install, ensure sounddevice is installed
python -c "import pyaudio" 2>nul
if %errorlevel% neq 0 (
    echo PyAudio not available, installing sounddevice...
    python -m pip install sounddevice numpy
)

echo.
echo Installing Playwright browsers (this may take a few minutes)...
python -m playwright install

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo You can now run Malika Assistant by:
echo 1. Double-clicking run_malika.bat
echo 2. Or running: python main.py
echo.
echo IMPORTANT: Make sure to set your Gemini API key in:
echo    config/api_keys.json
echo.
pause
