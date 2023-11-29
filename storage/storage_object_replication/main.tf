

resource "azurerm_storage_object_replication" "this" {

  ########################################
  # required vars
  ########################################
  source_storage_account_id      = var.source_storage_account_id
  destination_storage_account_id = var.destination_storage_account_id

  dynamic "rules" { # var.rules
    for_each = var.rules != null ? var.rules : []
    content {
      source_container_name        = lookup(rules.value, "source_container_name")      # (Required) 
      destination_container_name   = lookup(rules.value, "destination_container_name") # (Required) 
      copy_blobs_created_after     = lookup(rules.value, "copy_blobs_created_after", "OnlyNewObjects")
      filter_out_blobs_with_prefix = lookup(rules.value, "filter_out_blobs_with_prefix", null)
    }
  }

}
