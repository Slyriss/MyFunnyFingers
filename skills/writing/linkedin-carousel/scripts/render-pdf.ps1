param(
    [Parameter(Mandatory = $true)][string]$HtmlPath,
    [string]$OutPdf
)

$html = (Resolve-Path $HtmlPath).Path
if (-not $OutPdf) { $OutPdf = [IO.Path]::ChangeExtension($html, ".pdf") }

$edgePaths = @(
    "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
    "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
)
$chromePaths = @(
    "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
    "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
)
$browser = ($edgePaths + $chromePaths) | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $browser) { Write-Error "Neither Edge nor Chrome found for headless PDF rendering."; exit 1 }

$fileUrl = "file:///" + ($html -replace '\\', '/')
& $browser --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="$OutPdf" $fileUrl | Out-Null

if (Test-Path $OutPdf) {
    Write-Output "PDF written: $OutPdf"
} else {
    Write-Error "PDF rendering failed."
    exit 1
}
