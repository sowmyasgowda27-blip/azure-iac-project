resource "azurerm_network_security_rule" "allow_https" {
  name                        = "Allow-HTTPS"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"

  source_port_range           = "*"
  destination_port_range      = "443"

  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.learning.name
}

resource "azurerm_network_security_rule" "deny_ssh" {
  name                        = "Deny-SSH"
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "Tcp"

  source_port_range           = "*"
  destination_port_range      = "22"

  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.learning.name
}

resource "azurerm_network_security_rule" "deny_rdp" {
  name                        = "Deny-RDP"
  priority                    = 300
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "Tcp"

  source_port_range           = "*"
  destination_port_range      = "3389"

  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.learning.name
}