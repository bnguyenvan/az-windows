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
  value = var.public_ip_enable ? azurerm_public_ip.windows_server_public_ip[0].ip_address :  null
  description = "Public IP of VM"
}