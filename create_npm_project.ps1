param (
    [string]$path
)

# Prompt for the project name
$projectName = Read-Host -Prompt "Enter the project name"

# Navigate to the specified path
Set-Location -Path $path

# Create a new directory for the project
New-Item -Path $projectName -ItemType Directory | Out-Null

# Navigate into the project directory
Set-Location -Path $projectName

# Initialize a new npm project
npm init -y

# Create app.js file
@"
console.log('Hello, world!');
"@ | Set-Content -Path "app.js" -Encoding UTF8

Write-Output "Project created successfully in $path\$projectName"

Pause