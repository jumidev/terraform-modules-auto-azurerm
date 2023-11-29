

resource "azurerm_web_pubsub_hub" "this" {

  ########################################
  # required vars
  ########################################
  name          = var.name
  web_pubsub_id = var.web_pubsub_id

  ########################################
  # optional vars
  ########################################
  anonymous_connections_enabled = var.anonymous_connections_enabled # Default: False

  dynamic "event_handler" { # var.event_handler
    for_each = var.event_handler != null ? var.event_handler : []
    content {
      url_template       = lookup(event_handler.value, "url_template") # (Required) 
      user_event_pattern = lookup(event_handler.value, "user_event_pattern", null)
      system_events      = lookup(event_handler.value, "system_events", null)

      dynamic "auth" { # event_handler.value.auth
        for_each = event_handler.value.auth != null ? event_handler.value.auth : []
        content {
          managed_identity_id = lookup(auth.value, "managed_identity_id") # (Required) 
        }
      }

    }
  }


  dynamic "event_listener" { # var.event_listener
    for_each = var.event_listener != null ? var.event_listener : []
    content {
      system_event_name_filter = lookup(event_listener.value, "system_event_name_filter", null)
      user_event_name_filter   = lookup(event_listener.value, "user_event_name_filter", null)
      eventhub_namespace_name  = lookup(event_listener.value, "eventhub_namespace_name") # (Required) 
      eventhub_name            = lookup(event_listener.value, "eventhub_name")           # (Required) 
    }
  }

}
