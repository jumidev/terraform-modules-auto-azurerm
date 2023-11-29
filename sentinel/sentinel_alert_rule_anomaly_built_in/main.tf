

resource "azurerm_sentinel_alert_rule_anomaly_built_in" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  enabled                    = var.enabled
  mode                       = var.mode

  ########################################
  # optional vars
  ########################################
  name         = var.name
  display_name = var.display_name
}
