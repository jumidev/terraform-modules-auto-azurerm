

resource "azurerm_mssql_database_extended_auditing_policy" "this" {

  ########################################
  # required vars
  ########################################
  database_id = var.database_id

  ########################################
  # optional vars
  ########################################
  enabled                                 = var.enabled # Default: True
  storage_endpoint                        = var.storage_endpoint
  retention_in_days                       = var.retention_in_days # Default: 0
  storage_account_access_key              = var.storage_account_access_key
  storage_account_access_key_is_secondary = var.storage_account_access_key_is_secondary
  log_monitoring_enabled                  = var.log_monitoring_enabled # Default: True
}
