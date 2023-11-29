

resource "azurerm_sentinel_data_connector_threat_intelligence" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  lookback_date = var.lookback_date # Default: 1970-01-01T00:00:00Z
  tenant_id     = var.tenant_id
}
