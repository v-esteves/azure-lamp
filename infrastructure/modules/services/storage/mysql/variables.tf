variable "resource_group" {
    type = string
    description = "Resource Group where the element will be associated"
    default = "rg_mysql"
}

variable "region" {
    type = string
    description = "Region where the Azure MySql database should be created"
    default = "westeurope"
}

variable "name" {
    type = string
    description = "Name of the MySql database"
}

variable "version" {
    type = string
    description = "Version for the MySQL database"

    validation {
        condition     = var.version == "5.7" || var.version == "8.0"
        error_message = "MySQL version must be 5.7 or 8.0"
  }
}

variable "storage_size" {
    type = number
    description = "Storage size in MB for the database"

    validation {
        condition = var.storage > 0
        error_message = "Storage size must be higher than 0mb"
    }
  
}

variable "sku" {
    type = string
    description = "Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the tier + family + cores pattern "
    default = "B_Gen5_2"
}

variable "auto_grow" {
    type = bool
    description = "Flag to set the auto grow on the database. This is avoid that the system runs out of space"
    default = true
}

variable "backup_retention_period" {
    type = number
    description = "Back retention days for the server. Should be between 7 and 35 days"

    validation {
        condition = var.backup_retention_period >= 7 && var.backup_retention_period <= 35
        error_message = "Retention days should be between 7 and 35"
    }
}

variable "password_length" {
    type = number
    description = "Length for the generation of the admin password of the database"
    default = 16
}


variable "tags" {
    type = map(string,string)
    description = "Tags that should be added to the resource"
    default = {
        "environmnet" = "Development"
    }
}