# Скачивает все 123 кадра и называет их по таймкоду: 0_00.png, 0_07.png ... 14_14.png
# Запуск в PowerShell:  .\download-by-timecode.ps1
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
$dest = if ($args[0]) { $args[0] } else { 'lioness-frames' }
New-Item -ItemType Directory -Force -Path $dest | Out-Null
$lines = Get-Content timecodes.tsv
$i = 0
foreach ($line in $lines) {
    $i++
    $name, $url = $line -split "`t", 2
    $out = Join-Path $dest "$name.png"
    if ((Test-Path $out) -and ((Get-Item $out).Length -gt 0)) { Write-Host "[$i/$($lines.Count)] $name.png уже есть"; continue }
    Invoke-WebRequest -Uri $url -OutFile $out -MaximumRetryCount 4 -RetryIntervalSec 2
    Write-Host "[$i/$($lines.Count)] $name.png"
}
Write-Host "Готово: $((Get-ChildItem $dest).Count) файлов в $dest/"
