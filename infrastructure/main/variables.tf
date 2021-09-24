variable "resource_group" {
    type = string
    description = "Resource Group where the elements will be associated"
    default = "rg_mysql"
}

variable "region" {
    type = string
    description = "Region where the resources should be created"
    default = "westeurope"
}

variable "mysql_name" {
    type = string
    description = "Name of the MySql database"
}

variable "mysql_version" {
    type = string
    description = "Version for the MySQL database"

    validation {
        condition     = var.mysql_version == "5.7" || var.mysql_version == "8.0"
        error_message = "MySQL version must be 5.7 or 8.0?"
  }
}

variable "mysql_storage_size" {
    type = number
    description = "Storage size in MB for the database" 
}

variable "mysql_sku" {
    type = string
    description = "Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the tier + family + cores pattern "
    default = "B_Gen5_2"
}

variable "mysql_auto_grow" {
    type = bool
    description = "Flag to set the auto grow on the database. This is avoid that the system runs out of space"
    default = true
}

variable "mysql_backup_retention_period" {
    type = number
    description = "Back retention days for the server. Should be between 7 and 35 days"
}

variable "mysql_password_length" {
    type = number
    description = "Length for the generation of the admin password of the database"
    default = 16
}

variable "mysql_tags" {
    type = map(string)
    description = "Tags that should be added to the resource"
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

variable "webserver_pool_name" {
    type = string
    description = "name of the web servers. full name will be composed by name and pool size index"
}