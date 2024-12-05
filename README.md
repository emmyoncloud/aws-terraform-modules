
# Integrating Terraform Modules and .tfvars Files for Efficient Infrastructure Provisioning

So, the essence of this project is to explain the concept of **“Terraform Module”** and **".tfvars File"**.

**In Terraform, can we use both a "Terraform Module" and a ".tfvars" File in the same folder for the same infrastructure provisioning?**

**Yes**, you can use a Terraform module and a .tfvars file for the same infrastructure provisioning in the same folder. This is a common practice in Terraform to manage configurations and variables effectively.

# How It Works

1. **Terraform Module:** A module is a container for multiple resources used together. You can create a module in a separate directory or use a module from the Terraform Registry. When you define a module in your Terraform configuration, you can pass variables to it.

2. **.tfvars File:** A .tfvars file defines variable values for your Terraform configuration. This file allows you to set values for variables declared in your Terraform configuration files (e.g., main.tf). You can have multiple .tfvars files for different environments or configurations.

# Example Structure

Here’s an example of how you might structure your Terraform configuration:

![Example Structure](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/aws-terraform-modules.png)

# Example Files

1. `main.tf` [(Root Module)](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/main.tf)

2. `variables.tf` [(Root Module)](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/variables.tf) 

3. `terraform.tfvars` [(Root Module)](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/terraform.tfvars) 

4.  `modules/my_module/main.tf` [(Module)](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/modules/my_module/main.tf)

5. `modules/my_module/variables.tf` [(Module)](https://github.com/emmyoncloud/aws-terraform-modules/blob/main/modules/my_module/variables.tf) 

# Running Terraform

When you run `terraform apply` in the root directory `/aws-terraform-modules`, Terraform will automatically load the variable values from `terraform.tfvars`. The values defined in `terraform.tfvars` will be passed to the root module and the child module `my_module`.

# Summary

- You can use a Terraform module and a `.tfvars` file in the same folder.
- The `.tfvars` file allows you to define variable values that can be used in your main configuration and passed to modules.
- This approach helps organize your Terraform code and manage configurations effectively.

# Contributing

Feel free to fork this repository and submit pull requests. Contributions are welcome!

