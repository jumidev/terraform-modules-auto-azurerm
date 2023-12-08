data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}


resource "azurerm_monitor_aad_diagnostic_setting" "this" {

  ########################################
  # required vars
  ########################################
  name = var.name

  ########################################
  # optional vars
  ########################################

  dynamic "log" { # var.log
    for_each = var.log != null ? var.log : []
    content {
      category = lookup(log.value, "category") # (Required) 

      dynamic "retention_policy" { # log.value.retention_policy
        for_each = log.value.retention_policy != null ? log.value.retention_policy : []
        content {
          enabled = lookup(retention_policy.value, "enabled", false)
          days    = lookup(retention_policy.value, "days", 0)
        }
      }

      enabled = lookup(log.value, "enabled", true)
    }
  }


  dynamic "enabled_log" { # var.enabled_log
    for_each = var.enabled_log != null ? var.enabled_log : []
    content {
      category = lookup(enabled_log.value, "category") # (Required) 

      dynamic "retention_policy" { # enabled_log.value.retention_policy
        for_each = enabled_log.value.retention_policy != null ? enabled_log.value.retention_policy : []
        content {
          enabled = lookup(retention_policy.value, "enabled", false)
          days    = lookup(retention_policy.value, "days", 0)
        }
      }

    }
  }

  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id
  eventhub_name                  = data.azurerm_eventhub.this.name
  log_analytics_workspace_id     = var.log_analytics_workspace_id
  storage_account_id             = var.storage_account_id
}
