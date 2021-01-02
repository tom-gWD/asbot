@echo off
color 0A
Title Afterlife Server Bot
SET /P AREYOUSURE=Run Afterlife Discord Bot Server? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

nodemon ./source/main.js
echo PRESS CTRL + C to run exit command

pause

:ERROR_FILE
echo File Missing, Make sure you have all files in the correct locations
pause

:END