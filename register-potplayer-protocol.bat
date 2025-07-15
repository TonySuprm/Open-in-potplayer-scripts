@echo off

:: Register PotPlayer as a handler for potplayer:// protocol using the helper script

set "HELPER=%~dp0potplayer-url-helper.bat"

if not exist "%HELPER%" (
  echo ERROR: Helper script potplayer-url-helper.bat not found in this folder.
  pause
  exit /b 1
)

echo Registering PotPlayer as a handler for potplayer:// protocol using the helper script...
reg add "HKEY_CLASSES_ROOT\potplayer" /ve /d "URL:PotPlayer Protocol" /f
reg add "HKEY_CLASSES_ROOT\potplayer" /v "URL Protocol" /d "" /f
reg add "HKEY_CLASSES_ROOT\potplayer\shell" /f
reg add "HKEY_CLASSES_ROOT\potplayer\shell\open" /f
reg add "HKEY_CLASSES_ROOT\potplayer\shell\open\command" /ve /d "\"%HELPER%\" \"%%1\"" /f

echo.
echo Done. PotPlayer should now handle potplayer:// links using the helper script.
echo You may need to restart your browser for changes to take effect.
echo.
pause 