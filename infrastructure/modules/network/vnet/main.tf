resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.region
  resource_group_name = var.resourcegroup
  address_space       = var.vnet_cidr_list
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resourcegroup
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.vnet_subnet_cidr]
}