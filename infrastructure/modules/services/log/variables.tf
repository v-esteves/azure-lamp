variable "resource_group_name" {
    default = "rg_tblxio_sre"
}

variable "log_analytics_workspace_name" {
    default = "workspace_analytics_log"
}

variable "log_analytics_workspace_location" {
    default = "eastus"
}

variable "log_analytics_workspace_sku" {
    default = "PerGB2018"
}