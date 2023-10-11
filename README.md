#!/usr/bin/env bash
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

### Working with Env Vars 

We can list out all Envionemnt Variables using the `env` command 

We can filter specific env vars using grep eg. `env| grep AWS_`

### Setting and Unsetting Env Vars

In the terminal we can set using `export HELLO='world`

In the terminal we unset using `unset HELLO`

We can set an env var temporarily when just running a command 

```
HELLO='world'
```
Within a bash script we can set env without wiritng export eg.

```sh
#!/usr/bin/env bash
HELLO='world'

echo $HELLO
```

## Printing Vars 

We can print an env var using echo eg. `echo $HELLO`

### Scoping of Env Vars 

When you open up new bash terminals in VScode it will not be aware of env vars that you ahve set in another window.

If you want to Env Vars to presist across all future bash terminals that are open you need to set env vars in your bash profile. eg. `.bashprofile`

### Persisting Env Vars in Gitpod

We can persist env vars into gitpod by storing them in Gitpod secretes Storage.

```
gp env HELLO='world'
```

All Future workspaces launched will set the env vars for all bash terminals opened in those workspaces.

You can also set env vars in the `.gitpodyml` but this can only be non sensitive env vars.


https://en.wikipedia.org/wiki/Shebang_(Unix)
(https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 
https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://en.wikipedia.org/wiki/Shebang_(Unix)
https://en.wikipedia.org/wiki/Chmod