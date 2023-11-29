

resource "azurerm_servicebus_queue" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  namespace_id = var.namespace_id

  ########################################
  # optional vars
  ########################################
  lock_duration                           = var.lock_duration # Default: PT1M
  max_message_size_in_kilobytes           = var.max_message_size_in_kilobytes
  max_size_in_megabytes                   = var.max_size_in_megabytes        # Default: 1024
  requires_duplicate_detection            = var.requires_duplicate_detection # Default: False
  requires_session                        = var.requires_session             # Default: False
  default_message_ttl                     = var.default_message_ttl
  dead_lettering_on_message_expiration    = var.dead_lettering_on_message_expiration    # Default: False
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window # Default: PT10M
  max_delivery_count                      = var.max_delivery_count                      # Default: 10
  status                                  = var.status                                  # Default: Active
  enable_batched_operations               = var.enable_batched_operations               # Default: True
  auto_delete_on_idle                     = var.auto_delete_on_idle
  enable_partitioning                     = var.enable_partitioning # Default: False
  enable_express                          = var.enable_express      # Default: False
  forward_to                              = var.forward_to
  forward_dead_lettered_messages_to       = var.forward_dead_lettered_messages_to
}
