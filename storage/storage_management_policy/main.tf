

resource "azurerm_storage_management_policy" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_id = var.storage_account_id

  ########################################
  # optional vars
  ########################################

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
    content {
      name    = rule.key
      enabled = lookup(rule.value, "enabled") # (Required) 

      dynamic "filters" { # rule.value.filters
        for_each = rule.value.filters != null ? rule.value.filters : []
        content {
          blob_types   = lookup(filters.value, "blob_types") # (Required) possible values: blockBlob | appendBlob
          prefix_match = lookup(filters.value, "prefix_match", null)

          dynamic "match_blob_index_tag" { # filters.value.match_blob_index_tag
            for_each = filters.value.match_blob_index_tag != null ? filters.value.match_blob_index_tag : []
            content {
              name      = match_blob_index_tag.key
              operation = lookup(match_blob_index_tag.value, "operation", "==")
              value     = lookup(match_blob_index_tag.value, "value") # (Required) 
            }
          }

        }
      }


      dynamic "actions" { # rule.value.actions
        for_each = rule.value.actions != null ? rule.value.actions : []
        content {

          dynamic "base_blob" { # actions.value.base_blob
            for_each = actions.value.base_blob != null ? actions.value.base_blob : []
            content {
              tier_to_cool_after_days_since_modification_greater_than        = lookup(base_blob.value, "tier_to_cool_after_days_since_modification_greater_than", "-1")
              tier_to_cool_after_days_since_last_access_time_greater_than    = lookup(base_blob.value, "tier_to_cool_after_days_since_last_access_time_greater_than", "-1")
              tier_to_cool_after_days_since_creation_greater_than            = lookup(base_blob.value, "tier_to_cool_after_days_since_creation_greater_than", "-1")
              auto_tier_to_hot_from_cool_enabled                             = lookup(base_blob.value, "auto_tier_to_hot_from_cool_enabled", false)
              tier_to_archive_after_days_since_modification_greater_than     = lookup(base_blob.value, "tier_to_archive_after_days_since_modification_greater_than", "-1")
              tier_to_archive_after_days_since_last_access_time_greater_than = lookup(base_blob.value, "tier_to_archive_after_days_since_last_access_time_greater_than", "-1")
              tier_to_archive_after_days_since_creation_greater_than         = lookup(base_blob.value, "tier_to_archive_after_days_since_creation_greater_than", "-1")
              tier_to_archive_after_days_since_last_tier_change_greater_than = lookup(base_blob.value, "tier_to_archive_after_days_since_last_tier_change_greater_than", "-1")
              tier_to_cold_after_days_since_modification_greater_than        = lookup(base_blob.value, "tier_to_cold_after_days_since_modification_greater_than", "-1")
              tier_to_cold_after_days_since_last_access_time_greater_than    = lookup(base_blob.value, "tier_to_cold_after_days_since_last_access_time_greater_than", "-1")
              tier_to_cold_after_days_since_creation_greater_than            = lookup(base_blob.value, "tier_to_cold_after_days_since_creation_greater_than", "-1")
              delete_after_days_since_modification_greater_than              = lookup(base_blob.value, "delete_after_days_since_modification_greater_than", "-1")
              delete_after_days_since_last_access_time_greater_than          = lookup(base_blob.value, "delete_after_days_since_last_access_time_greater_than", "-1")
              delete_after_days_since_creation_greater_than                  = lookup(base_blob.value, "delete_after_days_since_creation_greater_than", "-1")
            }
          }


          dynamic "snapshot" { # actions.value.snapshot
            for_each = actions.value.snapshot != null ? actions.value.snapshot : []
            content {
              change_tier_to_archive_after_days_since_creation               = lookup(snapshot.value, "change_tier_to_archive_after_days_since_creation", "-1")
              tier_to_archive_after_days_since_last_tier_change_greater_than = lookup(snapshot.value, "tier_to_archive_after_days_since_last_tier_change_greater_than", "-1")
              change_tier_to_cool_after_days_since_creation                  = lookup(snapshot.value, "change_tier_to_cool_after_days_since_creation", "-1")
              tier_to_cold_after_days_since_creation_greater_than            = lookup(snapshot.value, "tier_to_cold_after_days_since_creation_greater_than", "-1")
              delete_after_days_since_creation_greater_than                  = lookup(snapshot.value, "delete_after_days_since_creation_greater_than", "-1")
            }
          }


          dynamic "version" { # actions.value.version
            for_each = actions.value.version != null ? actions.value.version : []
            content {
              change_tier_to_archive_after_days_since_creation               = lookup(version.value, "change_tier_to_archive_after_days_since_creation", "-1")
              tier_to_archive_after_days_since_last_tier_change_greater_than = lookup(version.value, "tier_to_archive_after_days_since_last_tier_change_greater_than", "-1")
              change_tier_to_cool_after_days_since_creation                  = lookup(version.value, "change_tier_to_cool_after_days_since_creation", "-1")
              tier_to_cold_after_days_since_creation_greater_than            = lookup(version.value, "tier_to_cold_after_days_since_creation_greater_than", "-1")
              delete_after_days_since_creation                               = lookup(version.value, "delete_after_days_since_creation", "-1")
            }
          }

        }
      }

    }
  }

}
