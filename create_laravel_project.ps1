param (
    [string]$path
)

# Prompt for the project name
$projectName = Read-Host -Prompt "Enter the project name"

# Prompt for the Laravel version
$laravelVersion = Read-Host -Prompt "Enter the Laravel version (leave empty for latest)"

# Navigate to the specified path
Set-Location -Path $path

# Determine the Composer command based on whether a version was specified
if ([string]::IsNullOrEmpty($laravelVersion)) {
    composer create-project --prefer-dist laravel/laravel $projectName
} else {
    composer create-project --prefer-dist laravel/laravel:$laravelVersion $projectName
}

Pause