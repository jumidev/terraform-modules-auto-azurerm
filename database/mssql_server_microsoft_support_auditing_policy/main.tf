

resource "azurerm_mssql_server_microsoft_support_auditing_policy" "this" {

  ########################################
  # required vars
  ########################################
  server_id = var.server_id

  ########################################
  # optional vars
  ########################################
  enabled                         = var.enabled # Default: True
  blob_storage_endpoint           = var.blob_storage_endpoint
  storage_account_access_key      = var.storage_account_access_key
  log_monitoring_enabled          = var.log_monitoring_enabled # Default: True
  storage_account_subscription_id = var.storage_account_subscription_id
}
