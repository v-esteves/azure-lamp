variable "resourcegroup" {
    type = string
    description = "variable that should contain the resource group where all resources will be added"
}

variable "vnet_name" {
    type = string
    description = "VNet to associate subnet"
}

variable "subnet_name" {
    type = string
    description = "name to be applied to the subnet"
    default = "terraform_vnet_subnet"
}

variable "vnet_subnet_cidr" {
    type = string
    description = "CIDR range to create the subnet for the AKS cluster"
    default = "10.1.0.0/22"
}
