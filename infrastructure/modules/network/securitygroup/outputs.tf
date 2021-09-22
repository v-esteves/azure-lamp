output "nsg_id" {
    description = "ID of the created network security group"
    value = azurerm_network_security_group.nsg.id
}