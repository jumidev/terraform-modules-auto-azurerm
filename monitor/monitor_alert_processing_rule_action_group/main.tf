data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_alert_processing_rule_action_group" "this" {

  ########################################
  # required vars
  ########################################
  add_action_group_ids = var.add_action_group_ids
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.this.name
  scopes               = var.scopes

  ########################################
  # optional vars
  ########################################

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


      dynamic "alert_rule_name" { # condition.value.alert_rule_name
        for_each = condition.value.alert_rule_name != null ? condition.value.alert_rule_name : []
        content {
          operator = lookup(alert_rule_name.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(alert_rule_name.value, "values")   # (Required) 
        }
      }


      dynamic "description" { # condition.value.description
        for_each = condition.value.description != null ? condition.value.description : []
        content {
          operator = lookup(description.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(description.value, "values")   # (Required) 
        }
      }


      dynamic "monitor_condition" { # condition.value.monitor_condition
        for_each = condition.value.monitor_condition != null ? condition.value.monitor_condition : []
        content {
          operator = lookup(monitor_condition.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(monitor_condition.value, "values")   # (Required) possible values: Fired | Resolved
        }
      }


      dynamic "monitor_service" { # condition.value.monitor_service
        for_each = condition.value.monitor_service != null ? condition.value.monitor_service : []
        content {
          operator = lookup(monitor_service.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(monitor_service.value, "values")   # (Required) possible values: ActivityLog Administrative | ActivityLog Autoscale | ActivityLog Policy | ActivityLog Recommendation | ActivityLog Security | Application Insights | Azure Backup | Azure Stack Edge | Azure Stack Hub | Custom | Data Box Gateway | Health Platform | Log Alerts V2 | Log Analytics | Platform | Prometheus | Resource Health | Smart Detector | VM Insights - Health
        }
      }


      dynamic "severity" { # condition.value.severity
        for_each = condition.value.severity != null ? condition.value.severity : []
        content {
          operator = lookup(severity.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(severity.value, "values")   # (Required) possible values: Sev0 | Sev1 | Sev2 | Sev3 | Sev4
        }
      }


      dynamic "signal_type" { # condition.value.signal_type
        for_each = condition.value.signal_type != null ? condition.value.signal_type : []
        content {
          operator = lookup(signal_type.value, "operator") # (Required) possible values: Equals | NotEquals
          values   = lookup(signal_type.value, "values")   # (Required) possible values: Metric | Log | Unknown | Health
        }
      }


      dynamic "target_resource" { # condition.value.target_resource
        for_each = condition.value.target_resource != null ? condition.value.target_resource : []
        content {
          operator = lookup(target_resource.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(target_resource.value, "values")   # (Required) 
        }
      }


      dynamic "target_resource_group" { # condition.value.target_resource_group
        for_each = condition.value.target_resource_group != null ? condition.value.target_resource_group : []
        content {
          operator = lookup(target_resource_group.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(target_resource_group.value, "values")   # (Required) 
        }
      }


      dynamic "target_resource_type" { # condition.value.target_resource_type
        for_each = condition.value.target_resource_type != null ? condition.value.target_resource_type : []
        content {
          operator = lookup(target_resource_type.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | DoesNotContain
          values   = lookup(target_resource_type.value, "values")   # (Required) 
        }
      }

    }
  }

  description = var.description
  enabled     = var.enabled # Default: True

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {
      effective_from  = lookup(schedule.value, "effective_from", null)
      effective_until = lookup(schedule.value, "effective_until", null)

      dynamic "recurrence" { # schedule.value.recurrence
        for_each = schedule.value.recurrence != null ? schedule.value.recurrence : []
        content {
          daily = lookup(recurrence.value, "daily", null)

          dynamic "weekly" { # recurrence.value.weekly
            for_each = recurrence.value.weekly != null ? recurrence.value.weekly : []
            content {
              days_of_week = lookup(weekly.value, "days_of_week") # (Required) possible values: Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
              start_time   = lookup(weekly.value, "start_time", null)
              end_time     = lookup(weekly.value, "end_time", null)
            }
          }

          monthly = lookup(recurrence.value, "monthly", null)
        }
      }

      time_zone = lookup(schedule.value, "time_zone", "UTC")
    }
  }

  tags = var.tags
}
