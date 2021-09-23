resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resourcegroup
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.vnet_subnet_cidr]
}