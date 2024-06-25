

resource "azurerm_mssql_database" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  server_id = var.server_id

  ########################################
  # optional vars
  ########################################
  auto_pause_delay_in_minutes = var.auto_pause_delay_in_minutes
  create_mode                 = var.create_mode # Default: Default

  dynamic "import" { # var.import
    for_each = var.import != null ? var.import : []
    content {
      storage_uri                  = lookup(import.value, "storage_uri")                  # (Required) 
      storage_key                  = lookup(import.value, "storage_key")                  # (Required) 
      storage_key_type             = lookup(import.value, "storage_key_type")             # (Required) possible values: StorageAccessKey | SharedAccessKey
      administrator_login          = lookup(import.value, "administrator_login")          # (Required) 
      administrator_login_password = lookup(import.value, "administrator_login_password") # (Required) 
      authentication_type          = lookup(import.value, "authentication_type")          # (Required) possible values: SQL | ADPassword
      storage_account_id           = lookup(import.value, "storage_account_id", null)
    }
  }

  creation_source_database_id    = var.creation_source_database_id
  collation                      = var.collation
  elastic_pool_id                = var.elastic_pool_id
  enclave_type                   = var.enclave_type
  geo_backup_enabled             = var.geo_backup_enabled             # Default: True
  maintenance_configuration_name = var.maintenance_configuration_name # Default: SQL_Default
  ledger_enabled                 = var.ledger_enabled                 # Default: False
  license_type                   = var.license_type

  dynamic "long_term_retention_policy" { # var.long_term_retention_policy
    for_each = var.long_term_retention_policy != null ? var.long_term_retention_policy : []
    content {
      weekly_retention          = lookup(long_term_retention_policy.value, "weekly_retention", null)
      monthly_retention         = lookup(long_term_retention_policy.value, "monthly_retention", null)
      yearly_retention          = lookup(long_term_retention_policy.value, "yearly_retention", null)
      week_of_year              = lookup(long_term_retention_policy.value, "week_of_year", null)
      immutable_backups_enabled = lookup(long_term_retention_policy.value, "immutable_backups_enabled", false)
    }
  }

  max_size_gb                           = var.max_size_gb
  min_capacity                          = var.min_capacity
  restore_point_in_time                 = var.restore_point_in_time
  recover_database_id                   = var.recover_database_id
  recovery_point_id                     = var.recovery_point_id
  restore_dropped_database_id           = var.restore_dropped_database_id
  restore_long_term_retention_backup_id = var.restore_long_term_retention_backup_id
  read_replica_count                    = var.read_replica_count
  read_scale                            = var.read_scale
  sample_name                           = var.sample_name

  dynamic "short_term_retention_policy" { # var.short_term_retention_policy
    for_each = var.short_term_retention_policy != null ? var.short_term_retention_policy : []
    content {
      retention_days           = lookup(short_term_retention_policy.value, "retention_days") # (Required) 
      backup_interval_in_hours = lookup(short_term_retention_policy.value, "backup_interval_in_hours", "12")
    }
  }

  sku_name             = var.sku_name
  storage_account_type = var.storage_account_type # Default: Geo
}
