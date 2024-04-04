

resource "azurerm_cosmosdb_mongo_collection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
  database_name       = var.database_name

  ########################################
  # optional vars
  ########################################
  shard_key              = var.shard_key
  analytical_storage_ttl = var.analytical_storage_ttl
  default_ttl_seconds    = var.default_ttl_seconds

  dynamic "index" { # var.indexs
    for_each = var.indexs != null ? var.indexs : []
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
