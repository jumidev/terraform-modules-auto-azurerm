data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_metric_alert" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  scopes              = var.scopes

  ########################################
  # optional vars
  ########################################

  dynamic "criteria" { # var.criteria
    for_each = var.criteria != null ? var.criteria : []
    content {
      metric_namespace = lookup(criteria.value, "metric_namespace") # (Required) 
      metric_name      = lookup(criteria.value, "metric_name")      # (Required) 
      aggregation      = lookup(criteria.value, "aggregation")      # (Required) possible values: Average | Count | Minimum | Maximum | Total
      operator         = lookup(criteria.value, "operator")         # (Required) possible values: Equals | GreaterThan | GreaterThanOrEqual | LessThan | LessThanOrEqual
      threshold        = lookup(criteria.value, "threshold")        # (Required) 

      dynamic "dimension" { # criteria.value.dimension
        for_each = criteria.value.dimension != null ? criteria.value.dimension : []
        content {
          name     = dimension.key
          operator = lookup(dimension.value, "operator") # (Required) possible values: Include | Exclude | StartsWith
          values   = lookup(dimension.value, "values")   # (Required) 
        }
      }

      skip_metric_validation = lookup(criteria.value, "skip_metric_validation", false)
    }
  }


  dynamic "dynamic_criteria" { # var.dynamic_criteria
    for_each = var.dynamic_criteria != null ? var.dynamic_criteria : []
    content {
      metric_namespace  = lookup(dynamic_criteria.value, "metric_namespace")  # (Required) 
      metric_name       = lookup(dynamic_criteria.value, "metric_name")       # (Required) 
      aggregation       = lookup(dynamic_criteria.value, "aggregation")       # (Required) possible values: Average | Count | Minimum | Maximum | Total
      operator          = lookup(dynamic_criteria.value, "operator")          # (Required) possible values: LessThan | GreaterThan | GreaterOrLessThan
      alert_sensitivity = lookup(dynamic_criteria.value, "alert_sensitivity") # (Required) possible values: Low | Medium | High

      dynamic "dimension" { # dynamic_criteria.value.dimension
        for_each = dynamic_criteria.value.dimension != null ? dynamic_criteria.value.dimension : []
        content {
          name     = dimension.key
          operator = lookup(dimension.value, "operator") # (Required) possible values: Include | Exclude | StartsWith
          values   = lookup(dimension.value, "values")   # (Required) 
        }
      }

      evaluation_total_count   = lookup(dynamic_criteria.value, "evaluation_total_count", 4)
      evaluation_failure_count = lookup(dynamic_criteria.value, "evaluation_failure_count", 4)
      ignore_data_before       = lookup(dynamic_criteria.value, "ignore_data_before", null)
      skip_metric_validation   = lookup(dynamic_criteria.value, "skip_metric_validation", null)
    }
  }


  dynamic "application_insights_web_test_location_availability_criteria" { # var.application_insights_web_test_location_availability_criteria
    for_each = var.application_insights_web_test_location_availability_criteria != null ? var.application_insights_web_test_location_availability_criteria : []
    content {
      web_test_id           = lookup(application_insights_web_test_location_availability_criteria.value, "web_test_id")           # (Required) 
      component_id          = lookup(application_insights_web_test_location_availability_criteria.value, "component_id")          # (Required) 
      failed_location_count = lookup(application_insights_web_test_location_availability_criteria.value, "failed_location_count") # (Required) 
    }
  }


  dynamic "action" { # var.action
    for_each = var.action != null ? var.action : []
    content {
      action_group_id    = lookup(action.value, "action_group_id") # (Required) possible values: azurerm_monitor_action_group
      webhook_properties = lookup(action.value, "webhook_properties", null)
    }
  }

  enabled                  = var.enabled       # Default: True
  auto_mitigate            = var.auto_mitigate # Default: True
  description              = var.description
  frequency                = var.frequency # Default: PT1M
  severity                 = var.severity  # Default: 3
  target_resource_type     = var.target_resource_type
  target_resource_location = var.target_resource_location
  window_size              = var.window_size # Default: PT5M
  tags                     = var.tags
}
