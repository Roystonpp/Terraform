# Terraform
Simple Terraform with AWS


#prerequisite

 - Install Terraform

 - AWS keys


Once the terraform script is created or cloned the directory must be initialised

```
terraform init
```

After run the command

```
terraform plan
```

The previous command should say that there is "2 to add". After run the final command
```
terraform apply
```

Check your AWS EC2 dashboard after the command has finished and you should see one EC2 instance.

