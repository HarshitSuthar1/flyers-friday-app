# Git Setup and Push to GitHub

Write-Host "🚀 Flyers Friday - GitHub Setup Script" -ForegroundColor Green
Write-Host ""

# Check if git is installed
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git is not installed. Please install Git first." -ForegroundColor Red
    Write-Host "Download from: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit
}

Write-Host "✅ Git is installed" -ForegroundColor Green
Write-Host ""

# Check if already initialized
if (Test-Path .git) {
    Write-Host "⚠️  Git repository already initialized" -ForegroundColor Yellow
    $reinit = Read-Host "Do you want to continue? (y/n)"
    if ($reinit -ne "y") {
        exit
    }
} else {
    Write-Host "📦 Initializing Git repository..." -ForegroundColor Cyan
    git init
    Write-Host "✅ Git initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "📝 Staging all files..." -ForegroundColor Cyan
git add .

Write-Host ""
Write-Host "💾 Creating initial commit..." -ForegroundColor Cyan
git commit -m "Complete Flyers Friday Flutter app with all screens"

Write-Host ""
Write-Host "✅ Files committed successfully!" -ForegroundColor Green
Write-Host ""

Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Gray
Write-Host ""
Write-Host "📋 NEXT STEPS:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to GitHub: https://github.com/new" -ForegroundColor White
Write-Host "   - Repository name: flyers-friday"
Write-Host "   - Make it Public"
Write-Host "   - Don't initialize with README"
Write-Host ""
Write-Host "2. After creating the repo, run these commands:" -ForegroundColor White
Write-Host ""
Write-Host "   git branch -M main" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/flyers-friday.git" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Replace YOUR_USERNAME with your actual GitHub username" -ForegroundColor White
Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Gray
Write-Host ""
Write-Host "📸 Don't forget to add screenshots to the /screenshots folder!" -ForegroundColor Yellow
Write-Host ""
Write-Host "✨ Good luck with your submission!" -ForegroundColor Green
