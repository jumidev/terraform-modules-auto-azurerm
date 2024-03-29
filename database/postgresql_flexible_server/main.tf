data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "administrator_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_postgresql_flexible_server" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  administrator_login    = var.administrator_login
  administrator_password = random_string.administrator_password.result

  dynamic "authentication" { # var.authentication
    for_each = var.authentication != null ? var.authentication : []
    content {
      active_directory_auth_enabled = lookup(authentication.value, "active_directory_auth_enabled", false)
      password_auth_enabled         = lookup(authentication.value, "password_auth_enabled", true)
      tenant_id                     = lookup(authentication.value, "tenant_id", null)
    }
  }

  backup_retention_days = var.backup_retention_days

  dynamic "customer_managed_key" { # var.customer_managed_key
    for_each = var.customer_managed_key != null ? var.customer_managed_key : []
    content {
      key_vault_key_id                     = lookup(customer_managed_key.value, "key_vault_key_id", null)
      primary_user_assigned_identity_id    = lookup(customer_managed_key.value, "primary_user_assigned_identity_id", null)
      geo_backup_key_vault_key_id          = lookup(customer_managed_key.value, "geo_backup_key_vault_key_id", null)
      geo_backup_user_assigned_identity_id = lookup(customer_managed_key.value, "geo_backup_user_assigned_identity_id", null)
    }
  }

  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled # Default: False
  create_mode                  = var.create_mode
  delegated_subnet_id          = var.delegated_subnet_id
  private_dns_zone_id          = var.private_dns_zone_id

  dynamic "high_availability" { # var.high_availability
    for_each = var.high_availability != null ? var.high_availability : []
    content {
      mode                      = lookup(high_availability.value, "mode") # (Required) 
      standby_availability_zone = lookup(high_availability.value, "standby_availability_zone", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }


  dynamic "maintenance_window" { # var.maintenance_window
    for_each = var.maintenance_window != null ? var.maintenance_window : []
    content {
      day_of_week  = lookup(maintenance_window.value, "day_of_week", "0")
      start_hour   = lookup(maintenance_window.value, "start_hour", "0")
      start_minute = lookup(maintenance_window.value, "start_minute", "0")
    }
  }

  point_in_time_restore_time_in_utc = var.point_in_time_restore_time_in_utc
  replication_role                  = var.replication_role
  sku_name                          = var.sku_name
  source_server_id                  = var.source_server_id
  auto_grow_enabled                 = var.auto_grow_enabled # Default: False
  storage_mb                        = var.storage_mb
  tags                              = var.tags
  version                           = var.version
  zone                              = var.zone
}
