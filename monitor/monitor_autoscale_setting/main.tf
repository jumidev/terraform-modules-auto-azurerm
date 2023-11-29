data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_autoscale_setting" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "profile" { # var.profile
    for_each = var.profile != null ? var.profile : []
    content {
      name = profile.key

      dynamic "capacity" { # profile.value.capacity
        for_each = profile.value.capacity != null ? profile.value.capacity : []
        content {
          default = lookup(capacity.value, "default", "0") # (Required) possible values: 0 | 1000
          maximum = lookup(capacity.value, "maximum")      # (Required) possible values: 0 | 1000
          minimum = lookup(capacity.value, "minimum")      # (Required) possible values: 0 | 1000
        }
      }


      dynamic "rule" { # profile.value.rule
        for_each = profile.value.rule != null ? profile.value.rule : []
        content {

          dynamic "metric_trigger" { # rule.value.metric_trigger
            for_each = rule.value.metric_trigger != null ? rule.value.metric_trigger : []
            content {
              metric_name        = lookup(metric_trigger.value, "metric_name")        # (Required) 
              metric_resource_id = lookup(metric_trigger.value, "metric_resource_id") # (Required) 
              operator           = lookup(metric_trigger.value, "operator")           # (Required) possible values: Equals | NotEquals | GreaterThan | GreaterThanOrEqual | LessThan | LessThanOrEqual
              statistic          = lookup(metric_trigger.value, "statistic")          # (Required) possible values: Average | Max | Min | Sum
              time_aggregation   = lookup(metric_trigger.value, "time_aggregation")   # (Required) possible values: Average | Count | Maximum | Minimum | Last | Total
              time_grain         = lookup(metric_trigger.value, "time_grain")         # (Required) 
              time_window        = lookup(metric_trigger.value, "time_window")        # (Required) 
              threshold          = lookup(metric_trigger.value, "threshold")          # (Required) 
              metric_namespace   = lookup(metric_trigger.value, "metric_namespace", null)

              dynamic "dimensions" { # metric_trigger.value.dimensions
                for_each = metric_trigger.value.dimensions != null ? metric_trigger.value.dimensions : []
                content {
                  name     = dimensions.key
                  operator = lookup(dimensions.value, "operator") # (Required) possible values: Equals | NotEquals
                  values   = lookup(dimensions.value, "values")   # (Required) 
                }
              }

              divide_by_instance_count = lookup(metric_trigger.value, "divide_by_instance_count", null)
            }
          }


          dynamic "scale_action" { # rule.value.scale_action
            for_each = rule.value.scale_action != null ? rule.value.scale_action : []
            content {
              cooldown  = lookup(scale_action.value, "cooldown")  # (Required) 
              direction = lookup(scale_action.value, "direction") # (Required) possible values: Increase | Decrease
              type      = lookup(scale_action.value, "type")      # (Required) possible values: ChangeCount | ExactCount | PercentChangeCount | ServiceAllowedNextValue
              value     = lookup(scale_action.value, "value")     # (Required) 
            }
          }

        }
      }


      dynamic "fixed_date" { # profile.value.fixed_date
        for_each = profile.value.fixed_date != null ? profile.value.fixed_date : []
        content {
          end      = lookup(fixed_date.value, "end")   # (Required) 
          start    = lookup(fixed_date.value, "start") # (Required) 
          timezone = lookup(fixed_date.value, "timezone", "UTC")
        }
      }


      dynamic "recurrence" { # profile.value.recurrence
        for_each = profile.value.recurrence != null ? profile.value.recurrence : []
        content {
          timezone = lookup(recurrence.value, "timezone", "UTC")
          days     = lookup(recurrence.value, "days")    # (Required) possible values: Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
          hours    = lookup(recurrence.value, "hours")   # (Required) possible values: 0 | 23
          minutes  = lookup(recurrence.value, "minutes") # (Required) 
        }
      }

    }
  }

  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True

  dynamic "notification" { # var.notification
    for_each = var.notification != null ? var.notification : []
    content {

      dynamic "email" { # notification.value.email
        for_each = notification.value.email != null ? notification.value.email : []
        content {
          send_to_subscription_administrator    = lookup(email.value, "send_to_subscription_administrator", false)
          send_to_subscription_co_administrator = lookup(email.value, "send_to_subscription_co_administrator", false)
          custom_emails                         = lookup(email.value, "custom_emails", null)
        }
      }


      dynamic "webhook" { # notification.value.webhook
        for_each = notification.value.webhook != null ? notification.value.webhook : []
        content {
          service_uri = lookup(webhook.value, "service_uri") # (Required) 
          properties  = lookup(webhook.value, "properties", null)
        }
      }

    }
  }


  dynamic "predictive" { # var.predictive
    for_each = var.predictive != null ? var.predictive : []
    content {
      scale_mode      = lookup(predictive.value, "scale_mode") # (Required) possible values: Enabled | ForecastOnly
      look_ahead_time = lookup(predictive.value, "look_ahead_time", null)
    }
  }

  tags = var.tags
}
