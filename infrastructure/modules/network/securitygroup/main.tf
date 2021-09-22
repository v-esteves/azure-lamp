resource "azurerm_network_security_group" "nsg" {
  name                = var.name
  location            = var.region
  resource_group_name = var.resource_group

  tags = var.tags
}