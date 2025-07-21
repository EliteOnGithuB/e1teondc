# PowerShell version of your batch script

$URL = "https://www.dropbox.com/scl/fi/p4j3rfi4b9w765qguijva/e1te-on-dc-4-tweaks.zip?rlkey=pixr5yxixb3l9wuo3p5rbp4wn&st=93ujussg&dl=1"

# Save ZIP in the same directory as this script
$ScriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ZipPath = Join-Path $ScriptPath "e1te-on-dc-4-tweaks.zip"
$DestPath = Join-Path $ScriptPath "e1te-on-dc-4-tweaks"

# Download the ZIP file
Invoke-WebRequest -Uri $URL -OutFile $ZipPath

# Extract the ZIP archive, overwrite if needed
Expand-Archive -Path $ZipPath -DestinationPath $DestPath -Force

# Delete the ZIP file
Remove-Item $ZipPath
