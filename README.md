# terraform-modules

Terraform modules for hoverkraft-tech org

This repository intent to be a reference modules library for using in your own terraform code
We use mainly to setup complex kubernetes infrastructure based on our full perimiter product hoverkraft DX-plan (more to come about it)

## features

The current modules cover these topics :

### ☁️ cloud-providers

- [AWS](./aws/)
- [Scaleway](./scw)

### 🔒 secrets vault

- [Password Store](./password-store)

### 🎯 plateforms

- [kubernetes](./k8s)

## usage

Modules can be used as any terraform module :

```hcl
module "my_aws_s3_bucket" {
  source = "github.com/hoverkraft-tech/terraform-modules.git?ref=1.0.0//aws/s3-bucket"

  name = "my-bucket"
}
```

## contributing

We are leveraging the following tools in order to minimize work and time needed to review a PR :

- [asdf](https://asdf-vm.com) to ensure we are using the same tool versions
- [pre-commit](https://pre-commit.com) hooks

### setup

```sh
git clone git@github.com:hoverkraft-tech/terraform-modules.git
cd terraform-modules
asdf install
pre-commit install -t pre-push
```

### submiting a new module

- Create a branch
- Copy `_template` as a boilerplate for your module
- Customize it
- Run pre-commits checks
- Submit your work as a new pull request
- Watch the check status
