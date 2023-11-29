

resource "azurerm_synapse_workspace_security_alert_policy" "this" {

  ########################################
  # required vars
  ########################################
  synapse_workspace_id = var.synapse_workspace_id
  policy_state         = var.policy_state

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
