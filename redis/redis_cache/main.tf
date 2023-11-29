data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_redis_cache" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  enable_non_ssl_port = var.enable_non_ssl_port

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  minimum_tls_version = var.minimum_tls_version # Default: 1.0

  dynamic "patch_schedule" { # var.patch_schedule
    for_each = var.patch_schedule != null ? var.patch_schedule : []
    content {
      day_of_week        = lookup(patch_schedule.value, "day_of_week") # (Required) possible values: Monday | Tuesday | Wednesday
      start_hour_utc     = lookup(patch_schedule.value, "start_hour_utc", null)
      maintenance_window = lookup(patch_schedule.value, "maintenance_window", "PT5H")
    }
  }

  private_static_ip_address     = var.private_static_ip_address
  public_network_access_enabled = var.public_network_access_enabled # Default: True

  dynamic "redis_configuration" { # var.redis_configuration
    for_each = var.redis_configuration != null ? var.redis_configuration : []
    content {
      aof_backup_enabled                      = lookup(redis_configuration.value, "aof_backup_enabled", false)
      aof_storage_connection_string_0         = lookup(redis_configuration.value, "aof_storage_connection_string_0", null)
      aof_storage_connection_string_1         = lookup(redis_configuration.value, "aof_storage_connection_string_1", null)
      enable_authentication                   = lookup(redis_configuration.value, "enable_authentication", true)
      active_directory_authentication_enabled = lookup(redis_configuration.value, "active_directory_authentication_enabled", false)
      maxmemory_reserved                      = lookup(redis_configuration.value, "maxmemory_reserved", null)
      maxmemory_delta                         = lookup(redis_configuration.value, "maxmemory_delta", null)
      maxmemory_policy                        = lookup(redis_configuration.value, "maxmemory_policy", "volatile-lru")
      maxfragmentationmemory_reserved         = lookup(redis_configuration.value, "maxfragmentationmemory_reserved", null)
      rdb_backup_enabled                      = lookup(redis_configuration.value, "rdb_backup_enabled", false)
      rdb_backup_frequency                    = lookup(redis_configuration.value, "rdb_backup_frequency", null)
      rdb_backup_max_snapshot_count           = lookup(redis_configuration.value, "rdb_backup_max_snapshot_count", null)
      rdb_storage_connection_string           = lookup(redis_configuration.value, "rdb_storage_connection_string", null)
      notify_keyspace_events                  = lookup(redis_configuration.value, "notify_keyspace_events", null)
    }
  }

  replicas_per_master  = var.replicas_per_master
  replicas_per_primary = var.replicas_per_primary
  redis_version        = var.redis_version
  tenant_settings      = var.tenant_settings
  shard_count          = var.shard_count
  subnet_id            = var.subnet_id
  tags                 = var.tags
  zones                = var.zones
}
