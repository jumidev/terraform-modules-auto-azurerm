

resource "azurerm_mysql_active_directory_administrator" "this" {

  ########################################
  # required vars
  ########################################
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  login               = var.login
  object_id           = var.object_id
  tenant_id           = var.tenant_id
}
