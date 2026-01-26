variable "resource_group_name" {
  type    = string
  default = "terraform_plan"
}
variable "cluster_name" {
  type    = string
  default = "test"
}
variable "location" {
  type    = string
  default = "West Europe"
}
variable "sku" {
  type    = string
  default = "Dev(No SLA)_Standard_E2a_v4"
}

variable "Environment" {
  type    = string
  default = "Test"
}

variable "capacity" {
  type    = number
  default = 2
}

variable "databases" {
  type = list(string)
}