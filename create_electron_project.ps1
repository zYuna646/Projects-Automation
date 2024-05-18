param (
    [string]$path
)

# Prompt for the project name
$projectName = Read-Host -Prompt "Enter the project name"

# Navigate to the specified path
Set-Location -Path $path

# Run the command to create a new Electron project
npx create-electron-app $projectName
