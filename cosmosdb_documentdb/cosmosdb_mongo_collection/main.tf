data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_cosmosdb_account" "this" {
  name                = var.cosmosdb_account_name
  resource_group_name = var.cosmosdb_account_resource_group_name == null ? null : var.cosmosdb_account_resource_group_name
}
data "azurerm_cosmosdb_sql_database" "this" {
  name                = var.cosmosdb_sql_database_name
  resource_group_name = var.cosmosdb_sql_database_resource_group_name == null ? null : var.cosmosdb_sql_database_resource_group_name
  account_name        = var.cosmosdb_sql_database_account_name == null ? null : var.cosmosdb_sql_database_account_name
}


resource "azurerm_cosmosdb_mongo_collection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = data.azurerm_cosmosdb_account.this.name
  database_name       = data.azurerm_cosmosdb_sql_database.this.name

  ########################################
  # optional vars
  ########################################
  shard_key              = var.shard_key
  analytical_storage_ttl = var.analytical_storage_ttl
  default_ttl_seconds    = var.default_ttl_seconds

  dynamic "index" { # var.index
    for_each = var.index != null ? var.index : []
    content {
      keys   = lookup(index.value, "keys") # (Required) 
      unique = lookup(index.value, "unique", false)
    }
  }

  throughput = var.throughput

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }

}
