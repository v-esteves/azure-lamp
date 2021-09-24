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

variable "ip_configuration_name" {
    type = string
    description = "IP Configuration name to be associated with the NIC resource"
}

variable "private_ip_allocation" {
    type = string
    description = "How should be the private IP be associated. Dynamic or Static"
    default = "Dynamic"

    validation {
        condition = var.private_ip_allocation == "Dynamic" || var.private_ip_allocation == "Static"
        error_message = "Allocation types available are Dynamic or Static?"  
    }
}

variable "private_ip" {
    type = string
    description = "Private IP to associate with the NIC, when IP Allocation is Static"
    default = ""
}

variable "private_ip_version" {
    type = string
    description = "IP Version to be used in the configuration. IPv4 or IPv6"
    default = "IPv4"
  
    validation {
        condition = var.private_ip_version == "IPv4" || var.private_ip_version == "IPv6"
        error_message = "IP versions are limited to IPv4 or IPv6. Should the default value be used?" 
    }
}

variable "public_ip" {
    type = string
    description = "ID of the Public IP resource that should be associated with the NIC"
    default = ""
}