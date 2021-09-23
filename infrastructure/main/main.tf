module "mysql" {
    source                      = "../modules/services/storage/mysql"
    resource_group              = ""
    region                      = ""
    name                        = ""
    mysql_version               = ""
    storage_size                = 0
    sku                         = ""
    auto_grow                   = true
    backup_retention_period     = 7
    password_length             = 16
    #tags
}