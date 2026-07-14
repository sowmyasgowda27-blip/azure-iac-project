output "resource_group_name" {
  description = "Name of the Resource Group"
  value       = azurerm_resource_group.learning.name
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "nsg_name" {
  value = module.network.nsg_name
}