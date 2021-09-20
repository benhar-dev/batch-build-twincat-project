set Devenv=C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe

set Project=%1
set Platform=TwinCAT RT (x64)
set Configuration=Release

echo "Build '%Project%'..."
"%Devenv%" "%Project%" /rebuild "%Configuration%|%Platform%" /log "%~dp0\Log.xml"
if errorlevel 1 echo "Build failed!" & exit /b 1