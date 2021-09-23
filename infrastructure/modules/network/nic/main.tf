resource "azurerm_network_interface" "nic" {
    name                = var.nic_name
    location            = var.region
    resource_group_name = var.resourcegroup

    ip_configuration {
      name                          = "internal"
      subnet_id                     = var.subnet_id
      private_ip_address_allocation = "Dynamic"
    }
}