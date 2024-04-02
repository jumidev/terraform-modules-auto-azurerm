

resource "azurerm_database_migration_project" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  service_name        = var.service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  source_platform     = var.source_platform
  target_platform     = var.target_platform

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
