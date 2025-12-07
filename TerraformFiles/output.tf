output "public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "resource_group" {
  description = "Resource Group name"
  value       = azurerm_resource_group.rg.name
}
