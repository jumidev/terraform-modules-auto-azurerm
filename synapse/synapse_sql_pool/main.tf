

resource "azurerm_synapse_sql_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  synapse_workspace_id = var.synapse_workspace_id
  sku_name             = var.sku_name

  ########################################
  # optional vars
  ########################################
  create_mode          = var.create_mode # Default: Default
  collation            = var.collation   # Default: SQL_LATIN1_GENERAL_CP1_CI_AS
  data_encrypted       = var.data_encrypted
  recovery_database_id = var.recovery_database_id

  dynamic "restore" { # var.restore
    for_each = var.restore != null ? var.restore : []
    content {
      source_database_id = lookup(restore.value, "source_database_id") # (Required) 
      point_in_time      = lookup(restore.value, "point_in_time")      # (Required) 
    }
  }

  geo_backup_policy_enabled = var.geo_backup_policy_enabled # Default: True
  storage_account_type      = var.storage_account_type      # Default: GRS
  tags                      = var.tags
}
