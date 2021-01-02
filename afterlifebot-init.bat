@echo off
color 0A
Title Afterlife Server Bot
SET /P AREYOUSURE=Run Afterlife Discord Bot Server? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

IF EXIST main.js (
    echo --Main.js Found--
) ELSE (
    GOTO ERROR_FILE
)
IF EXIST commands (
    echo --Commands Found--
) ELSE (
    GOTO ERROR_FILE
)
IF EXIST node_modules (
    echo --node_modules Found--
) ELSE (
    GOTO ERROR_FILE
)
IF EXIST .vs (
    echo --.vs Found--
) ELSE (
    GOTO ERROR_FILE
)

node ./source/main.js
echo PRESS CTRL + C to run exit command

pause

:ERROR_FILE
echo File Missing, Make sure you have all files in the correct locations
pause

:END