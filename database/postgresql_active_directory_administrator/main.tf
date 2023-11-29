data "azurerm_postgresql_server" "this" {
  name                = var.postgresql_server_name
  resource_group_name = var.postgresql_server_resource_group_name == null ? null : var.postgresql_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_postgresql_active_directory_administrator" "this" {

  ########################################
  # required vars
  ########################################
  server_name         = data.azurerm_postgresql_server.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  login               = var.login
  object_id           = var.object_id
  tenant_id           = var.tenant_id
}
