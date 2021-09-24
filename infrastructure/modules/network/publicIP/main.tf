resource "azurerm_public_ip" "public_IP" {
  name                = var.public_ip_name
  resource_group_name = var.resourcegroup
  location            = var.region
  allocation_method   = "Static"
}

