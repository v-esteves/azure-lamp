resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.region
  resource_group_name = var.resourcegroup
  address_space       = var.vnet_cidr_list
}