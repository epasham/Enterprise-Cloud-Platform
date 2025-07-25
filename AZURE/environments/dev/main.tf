module "resource-group" {
  source                  = "../../modules/resource-group"
  count                   = var.create_resource_group ? 1 : 0
  resource_group_name     = format("%s-%s-rg", var.name, var.environment)
  resource_group_location = var.resource_group_location
  tags                    = var.tags
}
