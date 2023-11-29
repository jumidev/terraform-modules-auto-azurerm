

resource "azurerm_sentinel_data_connector_microsoft_threat_protection" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  tenant_id = var.tenant_id
}
