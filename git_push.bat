@echo off

:: Set the current directory
set "current_dir=%cd%"

:: Set the timestamp for the commit
set "timestamp=%date:/=-%_%time::=-%"

:: Get the current PC name
for /f "tokens=2 delims= " %%a in ('hostname') do set "pc_name=%%a"

:: Set the GitHub username
set "username=samarthkhorate"

:: Set the repository URL
set "repo_url=https://github.com/samarthkhorate/skcakes.in.net.git"

:: Add and commit changes with timestamp and PC name
git -C "%current_dir%" add .
git -C "%current_dir%" commit -m "Changes committed from %pc_name% at %timestamp%"

:: Push changes to the repository
git -C "%current_dir%" push origin main
