resource "random_password" "mysqlpassword" {
    length = var.password_length
    special = true
}

resource "azurerm_mysql_server" "mysql" {
    name                = var.name
    location            = var.region
    resource_group_name = var.resource_group

    administrator_login          = "mysqladmin"
    administrator_login_password = random_password.mysqlpassword.result

    sku_name   = var.sku
    storage_mb = var.storage_size
    version    = var.mysql_version

    auto_grow_enabled                 = var.auto_grow
    backup_retention_days             = var.backup_retention_period
    geo_redundant_backup_enabled      = false
    infrastructure_encryption_enabled = true
    public_network_access_enabled     = true
    ssl_enforcement_enabled           = true
    ssl_minimal_tls_version_enforced  = "TLS1_2"

    tags = var.tags
}