resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_cosmosdb_postgresql_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  node_count          = var.node_count

  ########################################
  # optional vars
  ########################################
  administrator_login_password         = random_string.administrator_login_password.result
  citus_version                        = var.citus_version
  coordinator_public_ip_access_enabled = var.coordinator_public_ip_access_enabled # Default: True
  coordinator_server_edition           = var.coordinator_server_edition           # Default: GeneralPurpose
  coordinator_storage_quota_in_mb      = var.coordinator_storage_quota_in_mb
  coordinator_vcore_count              = var.coordinator_vcore_count
  ha_enabled                           = var.ha_enabled # Default: False

  dynamic "maintenance_window" { # var.maintenance_window
    for_each = var.maintenance_window != null ? var.maintenance_window : []
    content {
      day_of_week  = lookup(maintenance_window.value, "day_of_week", "0")
      start_hour   = lookup(maintenance_window.value, "start_hour", "0")
      start_minute = lookup(maintenance_window.value, "start_minute", "0")
    }
  }

  node_public_ip_access_enabled = var.node_public_ip_access_enabled # Default: False
  node_server_edition           = var.node_server_edition           # Default: MemoryOptimized
  node_storage_quota_in_mb      = var.node_storage_quota_in_mb
  node_vcores                   = var.node_vcores
  point_in_time_in_utc          = var.point_in_time_in_utc
  preferred_primary_zone        = var.preferred_primary_zone
  shards_on_coordinator_enabled = var.shards_on_coordinator_enabled
  source_location               = var.source_location
  source_resource_id            = var.source_resource_id
  sql_version                   = var.sql_version
  tags                          = var.tags
}
