

resource "azurerm_sentinel_data_connector_iot" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  subscription_id = var.subscription_id
}
