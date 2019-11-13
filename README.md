# terraform-github-provider -> repo that you can use to see how github provider work

## How can I use this repository`?`

This repo has as dependencies a command line or shell git and terraform.You can find the install instructions bellow on [EXTRAS](#extras) section.

## How can I use this repo`?`

### 1 - clone repo terraform-github-provider

- open your shell or command line and go to the directory where you pretend to add the repo

```bash
cd <directory where pretend to add the repo>
```

```git
git clone git@github.com:orlando-pereira/terraform-github-provider.git
```

### 2 - move to your repo folder

```bash
cd terraform-github-provider
```

### 3 - export your environnement vars

```bash
 export TF_VAR_github_token=<your token>
 export TF_VAR_github_organization=<your organization>
```

### 4 - terraform init

- this will retrieve all dependencies for terraform files

```terraform
terraform init
```

### 5 - run terraform apply

```terraform
terraform apply
```

- This step will prompt `<<`Do you want to perform these actions?`>>`
  - the answer should be **yes**

### 6 - check the result

- In this case the results should be as bellow

```terraform
github_repository.test: Creating...
github_repository.test: Creation complete after 4s [id=terraform-test]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

_Note_: please check your git repository is created as https://github.com/<your organization>/terraform-test

### 7 - terraform destroy

```terraform
terraform destroy
```

- This will request confirmation and if your answer is **yes**
- this will wipe the resources you have builded
  
#### EXTRAS

This repo was based on the [documentation](https://www.terraform.io/docs/providers/github/index.html)

[Install git](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-intro-md)
for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

After clone the repo you can install terraform downloading the adequate version to your OS on [Terraform](https://www.terraform.io/downloads.html)
If you don't know how to install please follow the [tutorial](https://learn.hashicorp.com/terraform/getting-started/install.html)
