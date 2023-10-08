# Terraform Beginner Bootcamp 2023

## semantic versioning

This Project is going to utalize semantic versioning for its tagging.
[semver.org] (https://semver.org/)

The general format:
Given the version number **MAJOR.MINOR.PATCH**, eg.`1.0.1`
- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

## Install The Terraform CLI

### considerations with the terraform CLI changes 
The Terrafrom CLI instalation instructions have changed due to gpg keyring change. So we needed to refer to the latest instsall CLI instructions via Terrafrom documentation and change the scriptiong for install.

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 
### COnsiderations for Linix Distribution

 This project is built agaisnt ubantu.
Please consider checking your Linux Distibution and change according to your distibution needs.

https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/

### Refactoring Bash scripts 

While fixing the CLi deprecations issues we notice that the bash scripts steps were a considerable amount more code. So we decided to create a bash script to install the Terraform CLI.

This bash script is located here:[./bin/install_terraform_cli](./bin/Install_terraform_cli
- This will keep the Gitpod Task file ([.gitpod.yml].(gitpod.yml)) tidy.
- This will alow us an easier debug and execute manually terraform 
- This will allow better portablity for other projects that need to install the terraform CLI.

### Shebeng 
A shebang tells the bash script what program that will interpret the script. 

## Execution Considerations 

When executing the bash script we can use the`./` shorthand notation to execute the bash script.

If we are using a script in gitpod.yml we need to point the script to a pogram to interpret it.

### Linux Permisions Considerations 

in order to make our bash scripts executable we need to change linux permission for the fix to be executable at the user level.

https://en.wikipedia.org/wiki/Chmod


https://en.wikipedia.org/wiki/Shebang_(Unix)
(https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 
https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://en.wikipedia.org/wiki/Shebang_(Unix)
https://en.wikipedia.org/wiki/Chmod