

resource "azurerm_redis_cache" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
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

  minimum_tls_version           = var.minimum_tls_version # Default: 1.0
  patch_schedule                = var.patch_schedule
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
      storage_account_subscription_id         = lookup(redis_configuration.value, "storage_account_subscription_id", null)
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

##############################################################################################
# optional azurerm_spring_cloud_app_redis_association 
##############################################################################################
resource "azurerm_spring_cloud_app_redis_association" "this" {
  count               = var.spring_cloud_app_redis_association != null ? 1 : 0
  name                = lookup(var.spring_cloud_app_redis_association, "name")
  spring_cloud_app_id = lookup(var.spring_cloud_app_redis_association, "spring_cloud_app_id")
  redis_cache_id      = azurerm_redis_cache.this.id
  redis_access_key    = lookup(var.spring_cloud_app_redis_association, "redis_access_key")
  ssl_enabled         = lookup(var.spring_cloud_app_redis_association, "ssl_enabled", true)
}
