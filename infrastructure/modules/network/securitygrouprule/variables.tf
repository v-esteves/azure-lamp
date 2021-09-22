variable "resource_group" {
    type = string
    description = "Resource Group where the element will be associated"
    default = "rg_mysql"
}

variable "name" {
    type = string
    description = "Name of the Network Security Group rule"
}

variable "nsg_id" {
    type = string
    description = "Network Security Group where the rule will be associated"
}

variable "priority" {
    type = number
    description = "Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. "

    validation {
        condition = var.priority >= 100 && var.priority <= 4096
        error_message = "The priority should be between 100 and 4096"
    }
}

variable "direction" {
  
}

variable "access" {
  
}

variable "protocol" {
  
}

variable "source_port_range" {
    default = "*"
}

variable "destination_port_range" {
    default = "*"
}

variable "source_address_prefix" {
    default = "*"
}

variable "destination_address_prefix" {
    default = "*"
}