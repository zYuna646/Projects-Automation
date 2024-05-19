@echo off
setlocal

:: Get the directory where the batch script is run
set "scriptDir=%~dp0"

:: Remove trailing backslash if exists
if "%scriptDir:~-1%"=="\" set "scriptDir=%scriptDir:~0,-1%"

:: Add registry entries directly using reg add command
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects" /ve /d "" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects" /v "MUIVerb" /d "Projects" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects" /v "SubCommands" /d "" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_laravel" /v "MUIVerb" /d "Laravel" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_laravel\command" /ve /d "\"%scriptDir%\\create_laravel_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_next" /v "MUIVerb" /d "Next.js" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_next\command" /ve /d "\"%scriptDir%\\create_next_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_ml" /v "MUIVerb" /d "Machine Learning" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_ml\command" /ve /d "\"%scriptDir%\\create_ml_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_expo" /v "MUIVerb" /d "Expo" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_expo\command" /ve /d "\"%scriptDir%\\create_expo_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_django" /v "MUIVerb" /d "Django" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_django\command" /ve /d "\"%scriptDir%\\create_django_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_flask" /v "MUIVerb" /d "Flask" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_flask\command" /ve /d "\"%scriptDir%\\create_flask_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_express" /v "MUIVerb" /d "Express.js" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_express\command" /ve /d "\"%scriptDir%\\create_express_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_react" /v "MUIVerb" /d "React.js" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_react\command" /ve /d "\"%scriptDir%\\create_react_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_electron" /v "MUIVerb" /d "Electron" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_electron\command" /ve /d "\"%scriptDir%\\create_electron_project.bat\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_npm" /v "MUIVerb" /d "NPM Raw" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Projects\shell\c_npm\command" /ve /d "\"%scriptDir%\\create_npm_project.bat\" \"%%V\"" /f

echo Registry settings applied successfully.
pause
