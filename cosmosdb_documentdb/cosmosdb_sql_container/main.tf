

resource "azurerm_cosmosdb_sql_container" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
  database_name       = var.database_name
  partition_key_paths = var.partition_key_paths

  ########################################
  # optional vars
  ########################################
  partition_key_kind    = var.partition_key_kind # Default: Hash
  partition_key_version = var.partition_key_version

  dynamic "unique_key" { # var.unique_keies
    for_each = var.unique_keies != null ? var.unique_keies : []
    content {
      paths = lookup(unique_key.value, "paths") # (Required) 
    }
  }

  throughput = var.throughput

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }


  dynamic "indexing_policy" { # var.indexing_policy
    for_each = var.indexing_policy != null ? var.indexing_policy : []
    content {
      indexing_mode = lookup(indexing_policy.value, "indexing_mode", "consistent")

      dynamic "included_path" { # indexing_policy.value.included_path
        for_each = indexing_policy.value.included_path != null ? indexing_policy.value.included_path : []
        content {
          path = lookup(included_path.value, "path") # (Required) 
        }
      }


      dynamic "excluded_path" { # indexing_policy.value.excluded_path
        for_each = indexing_policy.value.excluded_path != null ? indexing_policy.value.excluded_path : []
        content {
          path = lookup(excluded_path.value, "path") # (Required) 
        }
      }


      dynamic "composite_index" { # indexing_policy.value.composite_index
        for_each = indexing_policy.value.composite_index != null ? indexing_policy.value.composite_index : []
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


      dynamic "spatial_index" { # indexing_policy.value.spatial_index
        for_each = indexing_policy.value.spatial_index != null ? indexing_policy.value.spatial_index : []
        content {
          path = lookup(spatial_index.value, "path") # (Required) 
        }
      }

    }
  }

  default_ttl            = var.default_ttl
  analytical_storage_ttl = var.analytical_storage_ttl

  dynamic "conflict_resolution_policy" { # var.conflict_resolution_policies
    for_each = var.conflict_resolution_policies != null ? var.conflict_resolution_policies : []
    content {
      mode                          = lookup(conflict_resolution_policy.value, "mode") # (Required) possible values: LastWriterWins | Custom
      conflict_resolution_path      = lookup(conflict_resolution_policy.value, "conflict_resolution_path", null)
      conflict_resolution_procedure = lookup(conflict_resolution_policy.value, "conflict_resolution_procedure", null)
    }
  }

}
