param (
    [string]$projectName,
    [string]$description
)

# If the param $projectName is missing, it will use your current folder name
if (-not $projectName){

    $projectName = Split-Path -Path $pwd -Leaf

}

# If the param $description is missing, it prompt the user for a description
if (-not $description){

    $description = Read-Host "Add a description for the project"

}

# If there's no README file, it will create a simple README
if (-not (Test-Path "README.md" -PathType Leaf)){

    echo "# $projectName" > README.md
    echo "" >> README.md
    echo $description >> README.md  

}

# Initialize your Git repo on main branch
git init -b main

# add and commit the contents of your folder
git add . && git commit -m "initial commit"

# Create your Git repo (It uses my prefered flags! Change them to your liking)
gh repo create $projectName --push --source . --public --remote origin --description $description

gh repo view --web