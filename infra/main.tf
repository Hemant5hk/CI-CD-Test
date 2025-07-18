provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "hkresource" {
  name     = "hktest-resources"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestoracc00123"
  resource_group_name      = azurerm_resource_group.hkresource.name
  location                 = azurerm_resource_group.hkresource.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
