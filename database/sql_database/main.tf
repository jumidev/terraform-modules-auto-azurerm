data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name == null ? null : var.sql_server_resource_group_name
}


resource "azurerm_sql_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  server_name         = data.azurerm_sql_server.this.name

  ########################################
  # optional vars
  ########################################
  create_mode = var.create_mode # Default: Default

  dynamic "import" { # var.import
    for_each = var.import != null ? var.import : []
    content {
      storage_uri                  = lookup(import.value, "storage_uri")                  # (Required) 
      storage_key                  = lookup(import.value, "storage_key")                  # (Required) 
      storage_key_type             = lookup(import.value, "storage_key_type")             # (Required) possible values: StorageAccessKey | SharedAccessKey
      administrator_login          = lookup(import.value, "administrator_login")          # (Required) 
      administrator_login_password = lookup(import.value, "administrator_login_password") # (Required) 
      authentication_type          = lookup(import.value, "authentication_type")          # (Required) possible values: SQL | ADPassword
      operation_mode               = lookup(import.value, "operation_mode", "Import")
    }
  }

  source_database_id               = var.source_database_id
  restore_point_in_time            = var.restore_point_in_time
  edition                          = var.edition
  collation                        = var.collation # Default: SQL_LATIN1_GENERAL_CP1_CI_AS
  max_size_bytes                   = var.max_size_bytes
  requested_service_objective_id   = var.requested_service_objective_id
  requested_service_objective_name = var.requested_service_objective_name
  source_database_deletion_date    = var.source_database_deletion_date
  elastic_pool_name                = var.elastic_pool_name
}
