

resource "azurerm_sentinel_data_connector_microsoft_cloud_app_security" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  alerts_enabled         = var.alerts_enabled         # Default: True
  discovery_logs_enabled = var.discovery_logs_enabled # Default: True
  tenant_id              = var.tenant_id
}
