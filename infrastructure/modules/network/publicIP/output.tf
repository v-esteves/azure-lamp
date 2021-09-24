output "public_ip_id" {
    value = azurerm_public_ip.public_IP.id
}

output "public_ip_fqdn" {
    value = azurerm_public_ip.public_IP.fqdn
}