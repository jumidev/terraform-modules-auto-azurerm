data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}


resource "azurerm_monitor_diagnostic_setting" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  eventhub_name                  = data.azurerm_eventhub.this.name
  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id

  dynamic "log" { # var.log
    for_each = var.log != null ? var.log : []
    content {
      category       = lookup(log.value, "category", null)
      category_group = lookup(log.value, "category_group", null)

      dynamic "retention_policy" { # log.value.retention_policy
        for_each = log.value.retention_policy != null ? log.value.retention_policy : []
        content {
          enabled = lookup(retention_policy.value, "enabled") # (Required) 
          days    = lookup(retention_policy.value, "days", null)
        }
      }

      enabled = lookup(log.value, "enabled", true)
    }
  }


  dynamic "enabled_log" { # var.enabled_log
    for_each = var.enabled_log != null ? var.enabled_log : []
    content {
      category       = lookup(enabled_log.value, "category", null)
      category_group = lookup(enabled_log.value, "category_group", null)

      dynamic "retention_policy" { # enabled_log.value.retention_policy
        for_each = enabled_log.value.retention_policy != null ? enabled_log.value.retention_policy : []
        content {
          enabled = lookup(retention_policy.value, "enabled") # (Required) 
          days    = lookup(retention_policy.value, "days", null)
        }
      }

    }
  }

  log_analytics_workspace_id = var.log_analytics_workspace_id

  dynamic "metric" { # var.metric
    for_each = var.metric != null ? var.metric : []
    content {
      category = lookup(metric.value, "category") # (Required) 

      dynamic "retention_policy" { # metric.value.retention_policy
        for_each = metric.value.retention_policy != null ? metric.value.retention_policy : []
        content {
          enabled = lookup(retention_policy.value, "enabled") # (Required) 
          days    = lookup(retention_policy.value, "days", null)
        }
      }

      enabled = lookup(metric.value, "enabled", true)
    }
  }

  storage_account_id             = var.storage_account_id
  log_analytics_destination_type = var.log_analytics_destination_type
  partner_solution_id            = var.partner_solution_id
}
