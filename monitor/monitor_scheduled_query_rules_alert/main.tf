data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_scheduled_query_rules_alert" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  data_source_id      = var.data_source_id
  frequency           = var.frequency
  query               = var.query
  time_window         = var.time_window

  trigger {
    metric_trigger = lookup(trigger.value, "metric_trigger", null)
    operator       = lookup(trigger.value, "operator")  # (Required) 
    threshold      = lookup(trigger.value, "threshold") # (Required) 
  }


  action {
    action_group           = lookup(action.value, "action_group") # (Required) 
    custom_webhook_payload = lookup(action.value, "custom_webhook_payload", null)
    email_subject          = lookup(action.value, "email_subject", null)
  }


  ########################################
  # optional vars
  ########################################
  authorized_resource_ids = var.authorized_resource_ids
  auto_mitigation_enabled = var.auto_mitigation_enabled # Default: False
  description             = var.description
  enabled                 = var.enabled    # Default: True
  query_type              = var.query_type # Default: ResultCount
  severity                = var.severity
  throttling              = var.throttling
  tags                    = var.tags
}
