

resource "azurerm_container_connected_registry" "this" {

  ########################################
  # required vars
  ########################################
  container_registry_id = var.container_registry_id
  name                  = var.name
  sync_token_id         = var.sync_token_id

  ########################################
  # optional vars
  ########################################
  audit_log_enabled = var.audit_log_enabled
  client_token_ids  = var.client_token_ids
  log_level         = var.log_level # Default: None
  mode              = var.mode      # Default: ReadWrite

  dynamic "notification" { # var.notification
    for_each = var.notification != null ? var.notification : []
    content {
      name   = notification.key
      action = lookup(notification.value, "action") # (Required) possible values: push | delete | *
      tag    = lookup(notification.value, "tag", null)
      digest = lookup(notification.value, "digest", null)
    }
  }

  parent_registry_id = var.parent_registry_id
  sync_message_ttl   = var.sync_message_ttl # Default: P1D
  sync_schedule      = var.sync_schedule    # Default: * * * * *
  sync_window        = var.sync_window
}
