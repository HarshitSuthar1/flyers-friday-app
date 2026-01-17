@echo off
echo.
echo ============================================
echo  Flyers Friday - GitHub Setup
echo ============================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git is not installed
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

REM Initialize git if not already done
if not exist .git (
    echo Initializing Git repository...
    git init
    echo [OK] Git initialized
) else (
    echo [INFO] Git repository already exists
)

echo.
echo Staging all files...
git add .

echo.
echo Creating commit...
git commit -m "Complete Flyers Friday Flutter app with all screens"

echo.
echo ============================================
echo  SUCCESS! Repository is ready
echo ============================================
echo.
echo NEXT STEPS:
echo.
echo 1. Create a new repository on GitHub
echo    Go to: https://github.com/new
echo    Name: flyers-friday
echo    Make it: Public
echo.
echo 2. Link and push your code:
echo    git branch -M main
echo    git remote add origin https://github.com/YOUR_USERNAME/flyers-friday.git
echo    git push -u origin main
echo.
echo 3. Add screenshots to /screenshots folder
echo.
echo ============================================
echo.
pause
