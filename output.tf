output "interface_id" {
  value = azurerm_network_interface.windows_server_nic.id
  description = "ID of NIC on the VM"
}

output "vm_name" {
  value = azurerm_windows_virtual_machine.windows_server.name
  description = "Name of VM"
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.windows_server.id
  description = "ID of VM"
}

output "vm_public_ip" {
  value = azurerm_windows_virtual_machine.windows_server.public_ip_address
  description = "Public IP of VM"
}

output "vm_private_ip" {
  value = azurerm_windows_virtual_machine.windows_server.private_ip_address
}