data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name != null ? var.sql_server_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_sql_managed_instance_active_directory_administrator" "this" {

  ########################################
  # required vars
  ########################################
  managed_instance_name = data.azurerm_sql_server.this.name
  resource_group_name   = data.azurerm_resource_group.this.name
  login                 = var.login
  object_id             = var.object_id
  tenant_id             = var.tenant_id

  ########################################
  # optional vars
  ########################################
  azuread_authentication_only = var.azuread_authentication_only # Default: False
}
