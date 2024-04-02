

resource "azurerm_database_migration_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
