

resource "azurerm_servicebus_topic" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  namespace_id = var.namespace_id

  ########################################
  # optional vars
  ########################################
  status                                  = var.status # Default: Active
  auto_delete_on_idle                     = var.auto_delete_on_idle
  default_message_ttl                     = var.default_message_ttl
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window # Default: PT10M
  enable_batched_operations               = var.enable_batched_operations
  enable_express                          = var.enable_express
  enable_partitioning                     = var.enable_partitioning
  max_message_size_in_kilobytes           = var.max_message_size_in_kilobytes
  max_size_in_megabytes                   = var.max_size_in_megabytes
  requires_duplicate_detection            = var.requires_duplicate_detection
  support_ordering                        = var.support_ordering
}
