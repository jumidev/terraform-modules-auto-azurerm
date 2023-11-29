data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_mssql_server" "this" {
  name                = var.mssql_server_name
  resource_group_name = var.mssql_server_resource_group_name != null ? var.mssql_server_resource_group_name : var.resource_group_name

}


resource "azurerm_mssql_server_security_alert_policy" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_mssql_server.this.name
  state               = var.state

  ########################################
  # optional vars
  ########################################
  disabled_alerts            = var.disabled_alerts
  email_account_admins       = var.email_account_admins # Default: False
  email_addresses            = var.email_addresses
  retention_days             = var.retention_days # Default: 0
  storage_endpoint           = var.storage_endpoint
  storage_account_access_key = var.storage_account_access_key
}
