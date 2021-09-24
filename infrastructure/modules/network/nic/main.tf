resource "azurerm_network_interface" "nic" {
    name                = var.nic_name
    location            = var.region
    resource_group_name = var.resourcegroup

    ip_configuration {
      name                          = var.ip_configuration_name
      subnet_id                     = var.subnet_id
      private_ip_address_allocation = var.private_ip_allocation
      private_ip_address_version    = var.private_ip_version
      primary                       = true
      private_ip_address            = var.private_ip
      public_ip_address_id          = var.public_ip
    }
}