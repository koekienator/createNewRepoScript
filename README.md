# createNewRepoScript

Powershell script I use to add my current folder as repo to GitHub.  

Requires:  
    - Git CLI: winget install --id GitHub.cli  

Params:  
    - $projectName: Name of the project, default is your folder name.  
    - $description: Add the description for your project  

The script wil:  
    - Create a README.md if non exists  
    - Init as branch main  
    - Add and Commit the whole folder  
    - Create the repo (public, remote "origin" and description)  
    - Opens new repo in web browser  
