# vmwContentLibrary

## Goals
Deploy a content library and populate it with files

## Prerequisites:
- TF is installed
- vcenter API reachable
- VMware credentials configure as environment variables:
```
TF_VAR_vsphere_user=******
TF_VAR_vsphere_server=******
TF_VAR_vsphere_password=******
```
- Files (defined in var.contentLibrary.files) available in the TF host

## Environment:

TF plan has been tested against:

### terraform

```
Terraform v0.13.5
+ provider registry.terraform.io/hashicorp/vsphere v1.24.2
```

### V-center version:
- VMware (V-center 6.7.0, ESXi, 6.7.0, 15160138)
- local content library

## Input/Parameters:
- All variables stored in variables.tf

## Use the TF plan to:
- Create a new local content library called var.contentLibrary.name
- Populate the content library with files configured in var.contentLibrary.files 

## Run the terraform:
- to apply the plan
```
cd ~ ; git clone https://github.com/tacobayle/vmwContentLibrary ; cd vmwContentLibrary ; terraform init ; terraform apply -auto-approve``
```
- to destroy the plan
```
terraform destroy -auto-approve
```
