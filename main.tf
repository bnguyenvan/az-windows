# Create virtual machine
resource "azurerm_windows_virtual_machine" "windows_server" {
  name                  = var.vm-name
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.windows_server_nic.id]
  size                  = var.instance_size
  admin_username        = var.username
  admin_password        = var.password

  os_disk {
    name                 = "${format("%s_OSDisk",var.vm-name)}"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  # Using azure command to find: az vm image list --output table --offer Windows
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter-gensecond"
    version   = "latest"
  }

  tags = {
    owner = "bong.nguyen@zoi.tech"
  }
}


# Create public IPs
resource "azurerm_public_ip" "windows_server_public_ip" {
  count = var.public_ip_enable ? 1 : 0
  name                = "${format("%s-public-ip",var.vm-name)}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
}

# Create network interface
resource "azurerm_network_interface" "windows_server_nic" {
  name                = "${format("%s_nic",var.vm-name)}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${format("%s_nic_configuration",var.vm-name)}"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.windows_server_public_ip.id
    public_ip_address_id = var.public_ip_enable == true ? azurerm_public_ip.windows_server_public_ip[0].id : null
  }
}

resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdown_vm" {
  virtual_machine_id = azurerm_windows_virtual_machine.windows_server.id
  location           = var.resource_group_location
  enabled            = var.autoshutdown_is_enable

  daily_recurrence_time = "0500"
  timezone              = "SE Asia Standard Time"

  notification_settings {
    enabled         = true
    time_in_minutes = "1"
    email = "bong.nguyen@zoi.tech"
  }
}