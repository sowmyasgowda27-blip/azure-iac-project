resource "azurerm_resource_group" "learning" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"

  location            = var.location
  resource_group_name = azurerm_resource_group.learning.name

  vnet_name = var.vnet_name
  nsg_name  = var.nsg_name

  address_space         = var.address_space
  public_subnet_prefix  = var.public_subnet_prefix
  private_subnet_prefix = var.private_subnet_prefix
}