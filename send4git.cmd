git add .
git status
@echo off
set /p id="Enter the commit: "
git commit -m '%id%'
git push origin master