# LAMP resource Group

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.region
}

# MySQL Resource
module "mysql" {
    source                      = "../modules/services/storage/mysql"
    resource_group              = azurerm_resource_group.rg.name
    region                      = azurerm_resource_group.rg.location
    name                        = var.mysql_name
    mysql_version               = var.mysql_version
    storage_size                = var.mysql_storage_size
    sku                         = var.mysql_sku
    auto_grow                   = var.mysql_auto_grow
    backup_retention_period     = var.mysql_backup_retention_period
    password_length             = var.mysql_password_length
    tags                        = var.mysql_tags
}

