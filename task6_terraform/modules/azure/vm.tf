resource "azurerm_linux_virtual_machine" "azure_vm" {
  name                  = "azure-vm"
  resource_group_name   = azurerm_resource_group.az_rg.name
  location              = azurerm_resource_group.az_rg.location
  size                  = var.size
  admin_username        = "ubuntu"
  user_data             = filebase64(var.user_data)
  network_interface_ids = [
    azurerm_network_interface.azure_network.id,
  ]

  admin_ssh_key {
    username   = "ubuntu"
    public_key = file(var.ssh_pub_key)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts" 
    version   = "latest"
  }
}