variable "resourcegroup" {
    type = string
    description = "variable that should contain the resource group where all resources will be added"
}

variable "region" {
  type = string
  description = "region where resources should be created"
}

variable "vnet_name" {
  type = string
  description = "name to be applied to the vnet"
  default = "terraform_vnet"
}

variable "vnet_cidr_list" {
  type = list(string)
  description = "CIDR range to create the vnet"
  default = ["10.1.0.0/16"]
}