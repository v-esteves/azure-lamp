locals {
    instance_count = var.pool_size
}

resource "random_password" "adminpassword" {
    length = var.password_length
    special = true
}

resource "azurerm_availability_set" "av_set" {
  name                = var.availability_set
  location            = var.region
  resource_group_name = var.resourcegroup
}

module "nic" {
    source                  = "../../network/nic"
    count                   = local.instance_count
    resourcegroup           = var.resourcegroup
    region                  = var.region
    subnet_id               = var.subnet_id
    nic_name                = "${var.name_pool}-nic${count.index}"
    ip_configuration_name   = "${var.name_pool}-nic-ipconfig${count.index}"
    private_ip_allocation   = "Dynamic"
}

resource "azurerm_linux_virtual_machine" "webserver" {
    count                           = local.instance_count
    name                            = "${var.name_pool}-vm${count.index}"
    resource_group_name             = var.resourcegroup
    location                        = var.region
    size                            = "Standard_F2"
    admin_username                  = "adminuser"
    admin_password                  = random_password.adminpassword.result
    availability_set_id             = azurerm_availability_set.av_set.id
    disable_password_authentication = false
    network_interface_ids = [
        module.nic[count.index].nic_id
    ]

    source_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04-LTS"
        version   = "latest"
    }

    os_disk {
        storage_account_type = "Standard_LRS"
        caching              = "ReadWrite"
    }
}