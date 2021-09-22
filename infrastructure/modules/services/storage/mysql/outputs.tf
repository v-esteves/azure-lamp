output "FQDN" {
    value = azurerm_mysql_server.mysql.fqdn
}

output "id" {
    value = azurerm_mysql_server.mysql.id
}

output "adminpassword" {
    sensitive = true
    value = random_password.mysqlpassword.result
}