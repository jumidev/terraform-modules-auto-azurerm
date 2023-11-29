

resource "azurerm_new_relic_tag_rule" "this" {

  ########################################
  # required vars
  ########################################
  monitor_id = var.monitor_id

  ########################################
  # optional vars
  ########################################
  azure_active_directory_log_enabled = var.azure_active_directory_log_enabled # Default: False
  activity_log_enabled               = var.activity_log_enabled               # Default: False

  dynamic "log_tag_filter" { # var.log_tag_filter
    for_each = var.log_tag_filter != null ? var.log_tag_filter : []
    content {
      name   = log_tag_filter.key
      action = lookup(log_tag_filter.value, "action") # (Required) possible values: Exclude | Include
      value  = lookup(log_tag_filter.value, "value")  # (Required) 
    }
  }

  metric_enabled = var.metric_enabled # Default: False

  dynamic "metric_tag_filter" { # var.metric_tag_filter
    for_each = var.metric_tag_filter != null ? var.metric_tag_filter : []
    content {
      name   = metric_tag_filter.key
      action = lookup(metric_tag_filter.value, "action") # (Required) possible values: Exclude | Include
      value  = lookup(metric_tag_filter.value, "value")  # (Required) 
    }
  }

  subscription_log_enabled = var.subscription_log_enabled # Default: False
}
