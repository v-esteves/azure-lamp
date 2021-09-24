variable "resourcegroup" {
    type = string
    description = "variable that should contain the resource group where all resources will be added"
}

variable "region" {
    type = string
    description = "region where resources should be created"
}

variable "pool_size" {
    type = number
    description = "size of the web servers pool that should be created"
}

variable "name_pool" {
    type = string
    description = "name of the web servers. full name will be composed by name and pool size index"
}

variable "availability_set" {
    type = string
    description = "designated name for the availability set associated with the web server"
  
}

variable "password_length" {
    type = number
    description = "length for the generated password for admin user"
}

variable "subnet_id" {
    type = string
    description = "id of the subnet where the web server should be created"
}