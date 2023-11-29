data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_smart_detector_alert_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  detector_type       = var.detector_type
  scope_resource_ids  = var.scope_resource_ids

  action_group {
    ids             = lookup(action_group.value, "ids") # (Required) 
    email_subject   = lookup(action_group.value, "email_subject", null)
    webhook_payload = lookup(action_group.value, "webhook_payload", null)
  }

  severity  = var.severity
  frequency = var.frequency

  ########################################
  # optional vars
  ########################################
  description         = var.description
  enabled             = var.enabled # Default: True
  throttling_duration = var.throttling_duration
  tags                = var.tags
}
