

resource "azurerm_sentinel_alert_rule_threat_intelligence" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  alert_rule_template_guid   = var.alert_rule_template_guid

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
}
