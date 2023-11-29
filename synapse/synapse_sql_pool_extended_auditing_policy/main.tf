

resource "azurerm_synapse_sql_pool_extended_auditing_policy" "this" {

  ########################################
  # required vars
  ########################################
  sql_pool_id = var.sql_pool_id

  ########################################
  # optional vars
  ########################################
  storage_endpoint                        = var.storage_endpoint
  retention_in_days                       = var.retention_in_days # Default: 0
  storage_account_access_key              = var.storage_account_access_key
  storage_account_access_key_is_secondary = var.storage_account_access_key_is_secondary
  log_monitoring_enabled                  = var.log_monitoring_enabled # Default: True
}
