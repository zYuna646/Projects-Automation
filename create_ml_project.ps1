param (
    [string]$path
)

# Prompt for the project name
$projectName = Read-Host -Prompt "Enter the project name"

# Navigate to the specified path
Set-Location -Path $path

# Ensure cookiecutter is installed
pip install --upgrade cookiecutter

# Run the Cookiecutter command to create a new project using the specified template
cookiecutter -c v1 https://github.com/drivendata/cookiecutter-data-science --no-input project_name=$projectName

Pause