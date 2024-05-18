@echo off
setlocal
set PowerShellScriptPath=%~dp0create_django_project.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File "%PowerShellScriptPath%" "%~1"
endlocal
