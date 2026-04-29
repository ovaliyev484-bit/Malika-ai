@echo off
echo ========================================
echo Creating Desktop Shortcuts
echo ========================================
echo.

set DESKTOP=%USERPROFILE%\Desktop
set SCRIPT_DIR=%~dp0

echo Creating Setup shortcut on Desktop...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%DESKTOP%\Malika - Setup.lnk'); $Shortcut.TargetPath = '%SCRIPT_DIR%setup_malika.bat'; $Shortcut.WorkingDirectory = '%SCRIPT_DIR%'; $Shortcut.IconLocation = 'shell32.dll,25'; $Shortcut.Description = 'Setup Malika Assistant'; $Shortcut.Save()"

echo Creating Run shortcut on Desktop...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%DESKTOP%\Malika - Run.lnk'); $Shortcut.TargetPath = '%SCRIPT_DIR%run_malika.bat'; $Shortcut.WorkingDirectory = '%SCRIPT_DIR%'; $Shortcut.IconLocation = 'shell32.dll,138'; $Shortcut.Description = 'Run Malika Assistant'; $Shortcut.Save()"

echo.
echo ========================================
echo Shortcuts Created Successfully!
echo ========================================
echo.
echo Check your Desktop for:
echo - Malika - Setup.lnk
echo - Malika - Run.lnk
echo.
pause
