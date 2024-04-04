

resource "azurerm_storage_blob_inventory_policy" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_id = var.storage_account_id

  dynamic "rules" { # var.ruless
    for_each = var.ruless != null ? var.ruless : []
    content {
      name                   = rules.key
      storage_container_name = lookup(rules.value, "storage_container_name") # (Required) 
      format                 = lookup(rules.value, "format")                 # (Required) possible values: Csv | Parquet
      schedule               = lookup(rules.value, "schedule")               # (Required) possible values: Daily | Weekly
      scope                  = lookup(rules.value, "scope")                  # (Required) possible values: Blob | Container
      schema_fields          = lookup(rules.value, "schema_fields")          # (Required) 

      dynamic "filter" { # rules.value.filter
        for_each = rules.value.filter != null ? rules.value.filter : []
        content {
          blob_types            = lookup(filter.value, "blob_types") # (Required) possible values: blockBlob | appendBlob | pageBlob
          include_blob_versions = lookup(filter.value, "include_blob_versions", false)
          include_deleted       = lookup(filter.value, "include_deleted", false)
          include_snapshots     = lookup(filter.value, "include_snapshots", false)
          prefix_match          = lookup(filter.value, "prefix_match", null)
          exclude_prefixes      = lookup(filter.value, "exclude_prefixes", null)
        }
      }

    }
  }

}
