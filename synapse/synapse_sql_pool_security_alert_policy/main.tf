

resource "azurerm_synapse_sql_pool_security_alert_policy" "this" {

  ########################################
  # required vars
  ########################################
  sql_pool_id  = var.sql_pool_id
  policy_state = var.policy_state

  ########################################
  # optional vars
  ########################################
  disabled_alerts              = var.disabled_alerts
  email_account_admins_enabled = var.email_account_admins_enabled # Default: False
  email_addresses              = var.email_addresses
  retention_days               = var.retention_days # Default: 0
  storage_account_access_key   = var.storage_account_access_key
  storage_endpoint             = var.storage_endpoint
}
