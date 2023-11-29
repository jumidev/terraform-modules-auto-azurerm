data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mssql_managed_instance_security_alert_policy" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name   = data.azurerm_resource_group.this.name
  managed_instance_name = var.managed_instance_name

  ########################################
  # optional vars
  ########################################
  disabled_alerts              = var.disabled_alerts
  enabled                      = var.enabled
  email_account_admins_enabled = var.email_account_admins_enabled # Default: False
  email_addresses              = var.email_addresses
  retention_days               = var.retention_days # Default: 0
  storage_endpoint             = var.storage_endpoint
  storage_account_access_key   = var.storage_account_access_key
}
