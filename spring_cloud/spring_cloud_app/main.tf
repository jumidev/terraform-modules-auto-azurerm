data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_spring_cloud_app" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  service_name        = var.service_name

  ########################################
  # optional vars
  ########################################
  addon_json = var.addon_json

  dynamic "custom_persistent_disk" { # var.custom_persistent_disk
    for_each = var.custom_persistent_disk != null ? var.custom_persistent_disk : []
    content {
      storage_name      = lookup(custom_persistent_disk.value, "storage_name") # (Required) 
      mount_path        = lookup(custom_persistent_disk.value, "mount_path")   # (Required) 
      share_name        = lookup(custom_persistent_disk.value, "share_name")   # (Required) 
      mount_options     = lookup(custom_persistent_disk.value, "mount_options", null)
      read_only_enabled = lookup(custom_persistent_disk.value, "read_only_enabled", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  is_public  = var.is_public  # Default: False
  https_only = var.https_only # Default: False

  dynamic "ingress_settings" { # var.ingress_settings
    for_each = var.ingress_settings != null ? var.ingress_settings : []
    content {
      backend_protocol        = lookup(ingress_settings.value, "backend_protocol", "Default")
      read_timeout_in_seconds = lookup(ingress_settings.value, "read_timeout_in_seconds", 300)
      send_timeout_in_seconds = lookup(ingress_settings.value, "send_timeout_in_seconds", 60)
      session_affinity        = lookup(ingress_settings.value, "session_affinity", "None")
      session_cookie_max_age  = lookup(ingress_settings.value, "session_cookie_max_age", null)
    }
  }


  dynamic "persistent_disk" { # var.persistent_disk
    for_each = var.persistent_disk != null ? var.persistent_disk : []
    content {
      size_in_gb = lookup(persistent_disk.value, "size_in_gb") # (Required) possible values: 0 | 50
      mount_path = lookup(persistent_disk.value, "mount_path", "/persistent")
    }
  }

  public_endpoint_enabled = var.public_endpoint_enabled
  tls_enabled             = var.tls_enabled # Default: False
}

##############################################################################################
# optional azurerm_spring_cloud_app_redis_association 
##############################################################################################
resource "azurerm_spring_cloud_app_redis_association" "this" {
  count               = var.redis_cache_id != null ? 1 : 0
  name                = var.name
  spring_cloud_app_id = azurerm_spring_cloud_app.this.id
  redis_cache_id      = var.redis_cache_id
  redis_access_key    = var.redis_access_key
  ssl_enabled         = var.ssl_enabled # Default: True
}

##############################################################################################
# optional azurerm_spring_cloud_app_mysql_association 
##############################################################################################
resource "azurerm_spring_cloud_app_mysql_association" "this" {
  count               = var.mysql_server_id != null ? 1 : 0
  name                = var.name
  spring_cloud_app_id = azurerm_spring_cloud_app.this.id
  mysql_server_id     = var.mysql_server_id
  database_name       = var.database_name
  username            = var.username
  password            = var.password
}
