resource "azurerm_storage_account" "tfstate" {
  name                = "stgiaclearning2026"
  resource_group_name = var.resource_group_name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  https_traffic_only_enabled      = true
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-learning"
    storage_account_name = "stgiaclearning2026"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}