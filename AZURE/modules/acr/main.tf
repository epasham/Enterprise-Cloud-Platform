resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = var.resource_group
  location            = var.location
  admin_enabled       = true
  sku                 = var.sku

  tags {
    org   = "infy"
    env   = var.environment
  }
}
