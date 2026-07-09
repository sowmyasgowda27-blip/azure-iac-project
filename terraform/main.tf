resource "azurerm_resource_group" "learning" {
  name     = "rg-iac-learning"
  location = "Germany West Central"
}


resource "azurerm_virtual_network" "learning" {
  name                = "vnet-iac-learning"
  location            = azurerm_resource_group.learning.location
  resource_group_name = azurerm_resource_group.learning.name
  address_space       = ["10.0.0.0/16"]
}


resource "azurerm_subnet" "public" {
  name                 = "snet-public"
  resource_group_name  = azurerm_resource_group.learning.name
  virtual_network_name = azurerm_virtual_network.learning.name
  address_prefixes     = ["10.0.1.0/24"]
}


resource "azurerm_subnet" "private" {
  name                 = "snet-private"
  resource_group_name  = azurerm_resource_group.learning.name
  virtual_network_name = azurerm_virtual_network.learning.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_security_group" "learning" {
  name                = "nsg-iac-learning"
  location            = azurerm_resource_group.learning.location
  resource_group_name = azurerm_resource_group.learning.name
}

resource "azurerm_subnet_network_security_group_association" "public" {
  subnet_id                 = azurerm_subnet.public.id
  network_security_group_id = azurerm_network_security_group.learning.id
}