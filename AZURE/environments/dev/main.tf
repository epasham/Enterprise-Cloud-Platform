module "resource-group" {
  source                  = "../../modules/resource-group"
  count                   = var.create_resource_group ? 1 : 0
  resource_group_name     = format("%s-%s-rg", var.name, var.environment)
  resource_group_location = var.resource_group_location
  tags                    = var.tags
}

module "acr" {
  source = "../../modules/acr"
  count      = var.acr_enabled ? 1 : 0

  name = format("%s-%s-acr", var.name, var.environment)
  environment = var.environment
  resource_group = azurerm_resource_group.rg.name
  location = var.resource_group_location
  sku = var.acr_sku
  tags = var.tags
}
