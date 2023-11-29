

resource "azurerm_servicebus_subscription" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  topic_id           = var.topic_id
  max_delivery_count = var.max_delivery_count

  ########################################
  # optional vars
  ########################################
  auto_delete_on_idle                       = var.auto_delete_on_idle
  default_message_ttl                       = var.default_message_ttl
  lock_duration                             = var.lock_duration
  dead_lettering_on_message_expiration      = var.dead_lettering_on_message_expiration
  dead_lettering_on_filter_evaluation_error = var.dead_lettering_on_filter_evaluation_error # Default: True
  enable_batched_operations                 = var.enable_batched_operations
  requires_session                          = var.requires_session
  forward_to                                = var.forward_to
  forward_dead_lettered_messages_to         = var.forward_dead_lettered_messages_to
  status                                    = var.status                             # Default: Active
  client_scoped_subscription_enabled        = var.client_scoped_subscription_enabled # Default: False

  dynamic "client_scoped_subscription" { # var.client_scoped_subscription
    for_each = var.client_scoped_subscription != null ? var.client_scoped_subscription : []
    content {
      client_id                               = lookup(client_scoped_subscription.value, "client_id", null)
      is_client_scoped_subscription_shareable = lookup(client_scoped_subscription.value, "is_client_scoped_subscription_shareable", true)
      is_client_scoped_subscription_durable   = lookup(client_scoped_subscription.value, "is_client_scoped_subscription_durable", null)
    }
  }

}
