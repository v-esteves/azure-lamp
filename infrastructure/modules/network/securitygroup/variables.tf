variable "resource_group" {
    type = string
    description = "Resource Group where the element will be associated"
    default = "rg_mysql"
}

variable "region" {
    type = string
    description = "Region where the Network Security Group should be created"
    default = "westeurope"
}

variable "name" {
    type = string
    description = "Name of the Network Security Group"
}

variable "tags" {
    type = map(string,string)
    description = "Tags that should be added to the resource"
    default = {
        "environmnet" = "Development"
    }
}