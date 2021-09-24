variable "resourcegroup" {
    type = string
    description = "variable that should contain the resource group where all resources will be added"
}

variable "region" {
    type = string
    description = "region where resources should be created"
}

variable "public_ip_name" {
    type = string
    description = "name for the public IP to be created"
}