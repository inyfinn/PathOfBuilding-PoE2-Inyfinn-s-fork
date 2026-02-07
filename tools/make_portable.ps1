# Path of Building 2 — INYFINN's Fork
# Creates a portable ZIP archive
# Usage: .\make_portable.ps1

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$distDir = Join-Path $PSScriptRoot "dist"
$zipName = "PathOfBuilding-PoE2-Inyfinn-portable.zip"
$outZip = Join-Path $distDir $zipName

# Clean and create dist
if (Test-Path $distDir) { Remove-Item $distDir -Recurse -Force }
$tempDir = Join-Path $distDir "pob2-portable"
New-Item -ItemType Directory -Path $tempDir -Force | Out-Null

Write-Host "Creating portable package from: $repoRoot"

# Copy runtime
Copy-Item (Join-Path $repoRoot "runtime") (Join-Path $tempDir "runtime") -Recurse -Force

# Copy src
Copy-Item (Join-Path $repoRoot "src") (Join-Path $tempDir "src") -Recurse -Force

# Copy root files
$rootFiles = @("manifest.xml", "changelog.txt", "help.txt", "LICENSE.md")
foreach ($f in $rootFiles) {
    $src = Join-Path $repoRoot $f
    if (Test-Path $src) { Copy-Item $src (Join-Path $tempDir $f) -Force }
}

# Create run script
$batContent = @"
@echo off
cd /d "%~dp0"
"runtime\Path of Building-PoE2.exe" "%~dp0src\Launch.lua"
pause
"@
Set-Content (Join-Path $tempDir "run_portable.bat") $batContent -Encoding ASCII

# Create ZIP
$zipPath = Join-Path (Split-Path $tempDir -Parent) $zipName
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
Compress-Archive -Path "$tempDir\*" -DestinationPath $zipPath -CompressionLevel Optimal

# Cleanup temp
Remove-Item $tempDir -Recurse -Force

Write-Host "Done: $zipPath"
Write-Host "Unzip and run run_portable.bat to start."
