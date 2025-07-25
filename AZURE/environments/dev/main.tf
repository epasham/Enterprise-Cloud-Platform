locals {
  name = "myproject"
  location       = "eastus"
  environment    = "dev"
  admin_enabled  = true
  sku = "Standard"

  tags = {
    Owner      = "infy"
    Env        = "dev"
    Department = "IT"
  }
}

module "resource_group" {
  source                  = "../../modules/resource_group"
  count                   = var.create_resource_group ? 1 : 0
  resource_group_name     = format("%s-%s-rg", local.name, local.environment)
  resource_group_location = local.location
  tags                    = local.tags
}

module "acr" {
  source = "../../modules/acr"
  count      = var.acr_enabled ? 1 : 0

  name = format("%s-%s-acr", local.name, local.environment)
  environment = local.environment
  resource_group = azurerm_resource_group.rg.name
  location = local.location
  sku = local.sku
  tags = local.tags
}
