data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_action_rule_suppression" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  suppression {
    recurrence_type = lookup(suppression.value, "recurrence_type") # (Required) 
    schedule        = lookup(suppression.value, "schedule", null)
  }


  ########################################
  # optional vars
  ########################################
  description = var.description
  enabled     = var.enabled # Default: True

  dynamic "scope" { # var.scope
    for_each = var.scope != null ? var.scope : []
    content {
      type         = lookup(scope.value, "type")         # (Required) possible values: ResourceGroup | Resource
      resource_ids = lookup(scope.value, "resource_ids") # (Required) 
    }
  }


  dynamic "condition" { # var.condition
    for_each = var.condition != null ? var.condition : []
    content {

      dynamic "alert_context" { # condition.value.alert_context
        for_each = condition.value.alert_context != null ? condition.value.alert_context : []
        content {
          operator = lookup(alert_context.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(alert_context.value, "values")   # (Required) 
        }
      }


      dynamic "alert_rule_id" { # condition.value.alert_rule_id
        for_each = condition.value.alert_rule_id != null ? condition.value.alert_rule_id : []
        content {
          operator = lookup(alert_rule_id.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(alert_rule_id.value, "values")   # (Required) 
        }
      }


      dynamic "description" { # condition.value.description
        for_each = condition.value.description != null ? condition.value.description : []
        content {
          operator = lookup(description.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(description.value, "values")   # (Required) 
        }
      }


      dynamic "monitor" { # condition.value.monitor
        for_each = condition.value.monitor != null ? condition.value.monitor : []
        content {
          operator = lookup(monitor.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(monitor.value, "values")   # (Required) possible values: Fired | Resolved
        }
      }


      dynamic "monitor_service" { # condition.value.monitor_service
        for_each = condition.value.monitor_service != null ? condition.value.monitor_service : []
        content {
          operator = lookup(monitor_service.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(monitor_service.value, "values")   # (Required) possible values: ActivityLog Administrative | ActivityLog Autoscale | ActivityLog Policy | ActivityLog Recommendation | ActivityLog Security | Application Insights | Azure Backup | Azure Stack Edge | Azure Stack Hub | Custom | Data Box Gateway | Health Platform | Log Alerts V2 | Log Analytics | Platform | Resource Health | Smart Detector | VM Insights - Health
        }
      }


      dynamic "severity" { # condition.value.severity
        for_each = condition.value.severity != null ? condition.value.severity : []
        content {
          operator = lookup(severity.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(severity.value, "values")   # (Required) possible values: Sev0 | Sev1 | Sev2 | Sev3 | Sev4
        }
      }


      dynamic "target_resource_type" { # condition.value.target_resource_type
        for_each = condition.value.target_resource_type != null ? condition.value.target_resource_type : []
        content {
          operator = lookup(target_resource_type.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(target_resource_type.value, "values")   # (Required) 
        }
      }

    }
  }

  tags = var.tags
}
