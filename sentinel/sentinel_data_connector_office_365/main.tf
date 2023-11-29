

resource "azurerm_sentinel_data_connector_office_365" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  exchange_enabled   = var.exchange_enabled   # Default: True
  sharepoint_enabled = var.sharepoint_enabled # Default: True
  teams_enabled      = var.teams_enabled      # Default: True
  tenant_id          = var.tenant_id
}
