output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.learning.name
}

output "nsg_name" {
  description = "Name of the Network Security Group"
  value       = azurerm_network_security_group.learning.name
}