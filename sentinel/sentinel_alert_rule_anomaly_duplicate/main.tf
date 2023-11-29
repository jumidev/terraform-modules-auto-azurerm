

resource "azurerm_sentinel_alert_rule_anomaly_duplicate" "this" {

  ########################################
  # required vars
  ########################################
  display_name               = var.display_name
  built_in_rule_id           = var.built_in_rule_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  enabled                    = var.enabled
  mode                       = var.mode

  ########################################
  # optional vars
  ########################################

  dynamic "multi_select_observation" { # var.multi_select_observation
    for_each = var.multi_select_observation != null ? var.multi_select_observation : []
    content {
      name             = multi_select_observation.key
      description      = lookup(multi_select_observation.value, "description", null)
      supported_values = lookup(multi_select_observation.value, "supported_values", null)
      values           = lookup(multi_select_observation.value, "values") # (Required) 
    }
  }


  dynamic "single_select_observation" { # var.single_select_observation
    for_each = var.single_select_observation != null ? var.single_select_observation : []
    content {
      name             = single_select_observation.key
      description      = lookup(single_select_observation.value, "description", null)
      supported_values = lookup(single_select_observation.value, "supported_values", null)
      value            = lookup(single_select_observation.value, "value") # (Required) 
    }
  }


  dynamic "prioritized_exclude_observation" { # var.prioritized_exclude_observation
    for_each = var.prioritized_exclude_observation != null ? var.prioritized_exclude_observation : []
    content {
      name        = prioritized_exclude_observation.key
      description = lookup(prioritized_exclude_observation.value, "description", null)
      prioritize  = lookup(prioritized_exclude_observation.value, "prioritize", null)
      exclude     = lookup(prioritized_exclude_observation.value, "exclude", null)
    }
  }


  dynamic "threshold_observation" { # var.threshold_observation
    for_each = var.threshold_observation != null ? var.threshold_observation : []
    content {
      name        = threshold_observation.key
      description = lookup(threshold_observation.value, "description", null)
      max         = lookup(threshold_observation.value, "max", null)
      min         = lookup(threshold_observation.value, "min", null)
      value       = lookup(threshold_observation.value, "value") # (Required) 
    }
  }

}
