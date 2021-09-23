output "mysql_fqdn" {
    value = module.mysql.FQDN
}

output "mysql_password" {
    sensitive = true
    value = module.mysql.adminpassword
}