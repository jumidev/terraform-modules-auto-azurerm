data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_cosmosdb_gremlin_graph" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name
  database_name       = var.database_name
  partition_key_path  = var.partition_key_path

  ########################################
  # optional vars
  ########################################
  partition_key_version  = var.partition_key_version
  throughput             = var.throughput
  analytical_storage_ttl = var.analytical_storage_ttl
  default_ttl            = var.default_ttl

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }


  dynamic "index_policy" { # var.index_policy
    for_each = var.index_policy != null ? var.index_policy : []
    content {
      automatic      = lookup(index_policy.value, "automatic", true)
      indexing_mode  = lookup(index_policy.value, "indexing_mode") # (Required) possible values: Consistent | Lazy | None
      included_paths = lookup(index_policy.value, "included_paths", null)
      excluded_paths = lookup(index_policy.value, "excluded_paths", null)

      dynamic "composite_index" { # index_policy.value.composite_index
        for_each = index_policy.value.composite_index != null ? index_policy.value.composite_index : []
        content {

          dynamic "index" { # composite_index.value.index
            for_each = composite_index.value.index != null ? composite_index.value.index : []
            content {
              path  = lookup(index.value, "path")  # (Required) 
              order = lookup(index.value, "order") # (Required) possible values: Ascending | Descending
            }
          }

        }
      }


      dynamic "spatial_index" { # index_policy.value.spatial_index
        for_each = index_policy.value.spatial_index != null ? index_policy.value.spatial_index : []
        content {
          path = lookup(spatial_index.value, "path") # (Required) 
        }
      }

    }
  }


  dynamic "conflict_resolution_policy" { # var.conflict_resolution_policy
    for_each = var.conflict_resolution_policy != null ? var.conflict_resolution_policy : []
    content {
      mode                          = lookup(conflict_resolution_policy.value, "mode") # (Required) possible values: LastWriterWins | Custom
      conflict_resolution_path      = lookup(conflict_resolution_policy.value, "conflict_resolution_path", null)
      conflict_resolution_procedure = lookup(conflict_resolution_policy.value, "conflict_resolution_procedure", null)
    }
  }


  dynamic "unique_key" { # var.unique_key
    for_each = var.unique_key != null ? var.unique_key : []
    content {
      paths = lookup(unique_key.value, "paths") # (Required) 
    }
  }

}

##############################################################################################
# optional azurerm_spring_cloud_app_cosmosdb_association 
##############################################################################################
resource "azurerm_spring_cloud_app_cosmosdb_association" "this" {
  count                            = var.spring_cloud_app_cosmosdb_association != null ? 1 : 0
  name                             = lookup(var.spring_cloud_app_cosmosdb_association, "name")
  spring_cloud_app_id              = lookup(var.spring_cloud_app_cosmosdb_association, "spring_cloud_app_id")
  cosmosdb_account_id              = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_account_id")
  api_type                         = lookup(var.spring_cloud_app_cosmosdb_association, "api_type")
  cosmosdb_access_key              = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_access_key")
  cosmosdb_cassandra_keyspace_name = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_cassandra_keyspace_name", null)
  cosmosdb_gremlin_database_name   = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_gremlin_database_name", null)
  cosmosdb_gremlin_graph_name      = azurerm_cosmosdb_gremlin_graph.this.name
  cosmosdb_mongo_database_name     = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_mongo_database_name", null)
  cosmosdb_sql_database_name       = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_sql_database_name", null)
}
