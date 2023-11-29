

resource "azurerm_datadog_monitor_tag_rule" "this" {

  ########################################
  # required vars
  ########################################
  datadog_monitor_id = var.datadog_monitor_id

  ########################################
  # optional vars
  ########################################
  name = var.name # Default: default

  dynamic "log" { # var.log
    for_each = var.log != null ? var.log : []
    content {
      aad_log_enabled          = lookup(log.value, "aad_log_enabled", null)
      subscription_log_enabled = lookup(log.value, "subscription_log_enabled", null)
      resource_log_enabled     = lookup(log.value, "resource_log_enabled", null)

      dynamic "filter" { # log.value.filter
        for_each = log.value.filter != null ? log.value.filter : []
        content {
          name   = filter.key
          value  = lookup(filter.value, "value")  # (Required) 
          action = lookup(filter.value, "action") # (Required) 
        }
      }

    }
  }


  dynamic "metric" { # var.metric
    for_each = var.metric != null ? var.metric : []
    content {

      dynamic "filter" { # metric.value.filter
        for_each = metric.value.filter != null ? metric.value.filter : []
        content {
          name   = filter.key
          value  = lookup(filter.value, "value")  # (Required) 
          action = lookup(filter.value, "action") # (Required) 
        }
      }

    }
  }

}
