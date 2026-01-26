variable "clusters" {
  type = map(object({
    location  = string
    sku       = string
    capacity  = string
    databases = list(string)
  }))
}

variable "resource_group_name" {}
