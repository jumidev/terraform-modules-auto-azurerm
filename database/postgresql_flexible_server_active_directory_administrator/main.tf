

resource "azurerm_postgresql_flexible_server_active_directory_administrator" "this" {

  ########################################
  # required vars
  ########################################
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  object_id           = var.object_id
  tenant_id           = var.tenant_id
  principal_name      = var.principal_name
  principal_type      = var.principal_type
}
