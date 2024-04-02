

resource "azurerm_cosmosdb_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  offer_type          = var.offer_type

  consistency_policy {
    consistency_level       = lookup(consistency_policy.value, "consistency_level") # (Required) 
    max_interval_in_seconds = lookup(consistency_policy.value, "max_interval_in_seconds", 5)
    max_staleness_prefix    = lookup(consistency_policy.value, "max_staleness_prefix", 100)
  }


  geo_location {
    location          = lookup(geo_location.value, "location")          # (Required) 
    failover_priority = lookup(geo_location.value, "failover_priority") # (Required) 
    zone_redundant    = lookup(geo_location.value, "zone_redundant", false)
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags

  dynamic "analytical_storage" { # var.analytical_storage
    for_each = var.analytical_storage != null ? var.analytical_storage : []
    content {
      schema_type = lookup(analytical_storage.value, "schema_type") # (Required) possible values: FullFidelity | WellDefined
    }
  }


  dynamic "capacity" { # var.capacity
    for_each = var.capacity != null ? var.capacity : []
    content {
      total_throughput_limit = lookup(capacity.value, "total_throughput_limit") # (Required) possible values: -1
    }
  }

  create_mode                   = var.create_mode
  default_identity_type         = var.default_identity_type # Default: FirstPartyIdentity
  kind                          = var.kind                  # Default: GlobalDocumentDB
  ip_range_filter               = var.ip_range_filter
  enable_free_tier              = var.enable_free_tier           # Default: False
  analytical_storage_enabled    = var.analytical_storage_enabled # Default: False
  enable_automatic_failover     = var.enable_automatic_failover
  public_network_access_enabled = var.public_network_access_enabled # Default: True

  dynamic "capabilities" { # var.capabilities
    for_each = var.capabilities != null ? var.capabilities : []
    content {
      name = capabilities.key
    }
  }

  is_virtual_network_filter_enabled = var.is_virtual_network_filter_enabled
  key_vault_key_id                  = var.key_vault_key_id

  dynamic "virtual_network_rule" { # var.virtual_network_rule
    for_each = var.virtual_network_rule != null ? var.virtual_network_rule : []
    content {
      ignore_missing_vnet_service_endpoint = lookup(virtual_network_rule.value, "ignore_missing_vnet_service_endpoint", false)
    }
  }

  enable_multiple_write_locations       = var.enable_multiple_write_locations
  access_key_metadata_writes_enabled    = var.access_key_metadata_writes_enabled # Default: True
  mongo_server_version                  = var.mongo_server_version
  network_acl_bypass_for_azure_services = var.network_acl_bypass_for_azure_services # Default: False
  network_acl_bypass_ids                = var.network_acl_bypass_ids
  local_authentication_disabled         = var.local_authentication_disabled # Default: False

  dynamic "backup" { # var.backup
    for_each = var.backup != null ? var.backup : []
    content {
      type                = lookup(backup.value, "type") # (Required) possible values: Continuous | Periodic
      interval_in_minutes = lookup(backup.value, "interval_in_minutes", null)
      retention_in_hours  = lookup(backup.value, "retention_in_hours", null)
      storage_redundancy  = lookup(backup.value, "storage_redundancy", null)
    }
  }


  dynamic "cors_rule" { # var.cors_rule
    for_each = var.cors_rule != null ? var.cors_rule : []
    content {
      allowed_headers    = lookup(cors_rule.value, "allowed_headers") # (Required) 
      allowed_methods    = lookup(cors_rule.value, "allowed_methods") # (Required) possible values: DELETE | GET | HEAD | MERGE | POST | OPTIONS | PUT | PATCH
      allowed_origins    = lookup(cors_rule.value, "allowed_origins") # (Required) 
      exposed_headers    = lookup(cors_rule.value, "exposed_headers") # (Required) 
      max_age_in_seconds = lookup(cors_rule.value, "max_age_in_seconds", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "restore" { # var.restore
    for_each = var.restore != null ? var.restore : []
    content {
      source_cosmosdb_account_id = lookup(restore.value, "source_cosmosdb_account_id") # (Required) 
      restore_timestamp_in_utc   = lookup(restore.value, "restore_timestamp_in_utc")   # (Required) 

      dynamic "database" { # restore.value.database
        for_each = restore.value.database != null ? restore.value.database : []
        content {
          name             = database.key
          collection_names = lookup(database.value, "collection_names", null)
        }
      }

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
  cosmosdb_account_id              = azurerm_cosmosdb_account.this.id
  api_type                         = lookup(var.spring_cloud_app_cosmosdb_association, "api_type")
  cosmosdb_access_key              = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_access_key")
  cosmosdb_cassandra_keyspace_name = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_cassandra_keyspace_name", null)
  cosmosdb_gremlin_database_name   = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_gremlin_database_name", null)
  cosmosdb_gremlin_graph_name      = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_gremlin_graph_name", null)
  cosmosdb_mongo_database_name     = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_mongo_database_name", null)
  cosmosdb_sql_database_name       = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_sql_database_name", null)
}
