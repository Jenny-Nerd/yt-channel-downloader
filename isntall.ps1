# Jenny's Personal App Installer
$repoUser = "Jenny-Nerd"
$repoName = "yt-channel-downloader"
$installDir = "$env:USERPROFILE\Desktop\Jenny-Downloader"

# Create folder on desktop
if (!(Test-Path $installDir)) { New-Item -ItemType Directory -Path $installDir }

Write-Host "Downloading your Free & Styled version..." -ForegroundColor Cyan

# 1. Download your modified Bypass Code
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/$repoUser/$repoName/main/main.py" -OutFile "$installDir\main.py"

# 2. Download your Custom Styles
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/$repoUser/$repoName/main/style_modified.qss" -OutFile "$installDir\style_modified.qss"

# 3. Download the Settings
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/$repoUser/$repoName/main/config.json" -OutFile "$installDir\config.json"

Write-Host "Done! Files are in the 'Jenny-Downloader' folder on your desktop." -ForegroundColor Green
Write-Host "To run: You need Python installed. Type 'python main.py' inside that folder." -ForegroundColor Yellow
