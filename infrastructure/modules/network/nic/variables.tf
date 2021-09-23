variable "resourcegroup" {
    type = string
    description = "variable that should contain the resource group where all resources will be added"
}

variable "region" {
  type = string
  description = "region where resources should be created"
}

variable "subnet_id" {
  type = string
  description = "subnet where the network interface card should be created"  
}

variable "nic_name" {
  type = string
  description = "name for the NIC to be created"
}