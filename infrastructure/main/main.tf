# LAMP resource Group

resource "azurerm_resource_group" "rg" {
    name     = var.resource_group
    location = var.region
}

# Network resources

module "vnet" {
    source          = "../modules/network/vnet"
    resourcegroup   = azurerm_resource_group.rg.name
    region          = azurerm_resource_group.rg.location
    vnet_name       = var.vnet_name
    vnet_cidr_list  = var.vnet_cidr_list
}

module "webtier" {
    source            = "../modules/network/subnet"
    resourcegroup     = azurerm_resource_group.rg.name
    vnet_name         = module.vnet.vnet_name
    subnet_name       = var.subnet_name
    vnet_subnet_cidr  = var.vnet_subnet_cidr
}

# MySQL tier resources
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

# Webserver tier resources
module "webserver" {
    source                      = "../modules/services/webserver"
    resourcegroup               = azurerm_resource_group.rg.name
    region                      = azurerm_resource_group.rg.location
    pool_size                   = 5
    name_pool                   = var.webserver_pool_name
    availability_set            = "${var.webserver_pool_name}-av_set"
    password_length             = 16
    subnet_id                   = module.webtier.subnet_id
}