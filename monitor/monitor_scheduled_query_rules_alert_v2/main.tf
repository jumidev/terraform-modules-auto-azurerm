data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_scheduled_query_rules_alert_v2" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  criteria {
    operator                = lookup(criteria.value, "operator")                # (Required) 
    query                   = lookup(criteria.value, "query")                   # (Required) 
    threshold               = lookup(criteria.value, "threshold")               # (Required) 
    time_aggregation_method = lookup(criteria.value, "time_aggregation_method") # (Required) 
    dimension               = lookup(criteria.value, "dimension", null)
    failing_periods         = lookup(criteria.value, "failing_periods", null)
    metric_measure_column   = lookup(criteria.value, "metric_measure_column", null)
    resource_id_column      = lookup(criteria.value, "resource_id_column", null)
  }

  scopes          = var.scopes
  severity        = var.severity
  window_duration = var.window_duration

  ########################################
  # optional vars
  ########################################
  evaluation_frequency = var.evaluation_frequency

  dynamic "action" { # var.action
    for_each = var.action != null ? var.action : []
    content {
      action_groups     = lookup(action.value, "action_groups", null)
      custom_properties = lookup(action.value, "custom_properties", null)
    }
  }

  auto_mitigation_enabled           = var.auto_mitigation_enabled          # Default: False
  workspace_alerts_storage_enabled  = var.workspace_alerts_storage_enabled # Default: False
  description                       = var.description
  display_name                      = var.display_name
  enabled                           = var.enabled # Default: True
  mute_actions_after_alert_duration = var.mute_actions_after_alert_duration
  query_time_range_override         = var.query_time_range_override
  skip_query_validation             = var.skip_query_validation
  tags                              = var.tags
  target_resource_types             = var.target_resource_types
}
