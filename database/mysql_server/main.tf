resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_mysql_server" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = var.resource_group_name
  location                = var.location
  sku_name                = var.sku_name
  version                 = var.version
  ssl_enforcement_enabled = var.ssl_enforcement_enabled

  ########################################
  # optional vars
  ########################################
  administrator_login          = var.administrator_login
  administrator_login_password = random_string.administrator_login_password.result
  auto_grow_enabled            = var.auto_grow_enabled # Default: True
  backup_retention_days        = var.backup_retention_days
  create_mode                  = var.create_mode # Default: Default
  creation_source_server_id    = var.creation_source_server_id
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  public_network_access_enabled     = var.public_network_access_enabled # Default: True
  restore_point_in_time             = var.restore_point_in_time
  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls_version_enforced # Default: False
  storage_mb                        = var.storage_mb
}

##############################################################################################
# optional azurerm_spring_cloud_app_mysql_association 
##############################################################################################
resource "azurerm_spring_cloud_app_mysql_association" "this" {
  count               = var.spring_cloud_app_mysql_association != null ? 1 : 0
  name                = lookup(var.spring_cloud_app_mysql_association, "name")
  spring_cloud_app_id = lookup(var.spring_cloud_app_mysql_association, "spring_cloud_app_id")
  mysql_server_id     = azurerm_mysql_server.this.id
  database_name       = lookup(var.spring_cloud_app_mysql_association, "database_name")
  username            = lookup(var.spring_cloud_app_mysql_association, "username")
  password            = lookup(var.spring_cloud_app_mysql_association, "password")
}
