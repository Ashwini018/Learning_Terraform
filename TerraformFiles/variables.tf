variable "location" {
    description  = "Azure region"
    type = string
    default = "central India"
}
variable "resource_group_name" {
    description  = "resource group name"
    type = string
    default = "Terraform"
}
variable "vm_name" {
    description  = "virtual machine name"
    type = string
    default = "terraform_vm"
}
variable "admin_username" {
    description  = "Admin user name"
    type = string
    default = "Admin"
}
variable "admin_password" {
    description  = "Admin password"
    type = string
    default = "admin"
}
variable "vm_size" {
    description  = "vertual machine size"
    type = string
    default = "Standard_B1s"
}
variable "subscription_id" {
    description  = "subscription_id"
    type = string
    default = "99263c7c-4421-4323-b3c6-4670fea796b1"
}