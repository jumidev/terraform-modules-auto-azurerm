data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_activity_log_alert" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  scopes              = var.scopes

  criteria {
    category                = lookup(criteria.value, "category") # (Required) 
    caller                  = lookup(criteria.value, "caller", null)
    operation_name          = lookup(criteria.value, "operation_name", null)
    resource_provider       = lookup(criteria.value, "resource_provider", null)
    resource_providers      = lookup(criteria.value, "resource_providers", null)
    resource_type           = lookup(criteria.value, "resource_type", null)
    resource_types          = lookup(criteria.value, "resource_types", null)
    resource_group          = lookup(criteria.value, "resource_group", null)
    resource_groups         = lookup(criteria.value, "resource_groups", null)
    resource_id             = lookup(criteria.value, "resource_id", null)
    resource_ids            = lookup(criteria.value, "resource_ids", null)
    level                   = lookup(criteria.value, "level", null)
    levels                  = lookup(criteria.value, "levels", null)
    status                  = lookup(criteria.value, "status", null)
    statuses                = lookup(criteria.value, "statuses", null)
    sub_status              = lookup(criteria.value, "sub_status", null)
    sub_statuses            = lookup(criteria.value, "sub_statuses", null)
    recommendation_type     = lookup(criteria.value, "recommendation_type", null)
    recommendation_category = lookup(criteria.value, "recommendation_category", null)
    recommendation_impact   = lookup(criteria.value, "recommendation_impact", null)
    resource_health         = lookup(criteria.value, "resource_health", null)
    service_health          = lookup(criteria.value, "service_health", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "action" { # var.action
    for_each = var.action != null ? var.action : []
    content {
      action_group_id    = lookup(action.value, "action_group_id") # (Required) 
      webhook_properties = lookup(action.value, "webhook_properties", null)
    }
  }

  enabled     = var.enabled # Default: True
  description = var.description
  tags        = var.tags
}
