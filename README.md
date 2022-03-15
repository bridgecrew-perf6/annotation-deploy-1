# Deploy Infrastructure for annotation in IBM Cloud

[Setup Terraform Environment for IBM Cloud](https://ibm.github.io/cloud-enterprise-examples/iac/setup-environment)

Store the API key as the environment variable `IC_API_KEY`.

Create `terraform.tfvars` with reassigned variables if necessary.

Example:
```
instance_name = "terraform-annotation"
instance_profile = "bx2-4x16"
user_name = "forome"
disk_name = "/dev/vdd"
volume_profile = "general-purpose"
volume_capacity = "1000"
```

Deploy with terraform:
```
terraform init
terraform plan
terraform apply
terraform destroy
```

Additional commands:
```
terraform init -upgrade
terraform apply -auto-approve
terraform apply -destroy -auto-approve
```